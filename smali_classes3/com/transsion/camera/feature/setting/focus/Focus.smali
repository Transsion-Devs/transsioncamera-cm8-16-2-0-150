.class public Lcom/transsion/camera/feature/setting/focus/Focus;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/focus/IFocus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;,
        Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;
    }
.end annotation


# static fields
.field private static final FOCUS_HOLD_MILLS:I = 0xbb8

.field private static final FOCUS_STATE_UPDATE:I = 0x2

.field private static final RESET_TOUCH_FOCUS:I = 0x1

.field private static final TYPE_RESET_TOUCH_FOCUS_AND_VIEW:I = 0x1

.field private static final TYPE_RESET_TOUCH_VIEW:I = 0x2


# instance fields
.field private mAutoFocus:Z

.field private mCurrentMode:Ljava/lang/String;

.field private mDisableTouchCapture:Z

.field private mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

.field private mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

.field private final mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mFocusStateUpdateDisabled:Z

.field private mIsAutoFocusTriggered:Z

.field private mIsCapturing:Z

.field protected mIsDualVideoMode:Z

.field private mIsEvChanging:Z

.field private mIsInitValue:Z

.field protected mIsMoveMode:Z

.field private mIsPreviewStarted:Z

.field private mIsProfessionalMode:Z

.field protected mIsRecording:Z

.field private mIsShowUI:Z

.field protected mIsVideoMode:Z

.field protected mIsVlogMode:Z

.field private mLaserFocusSupport:Z

.field private mLastFocusState:Ljava/lang/String;

.field private mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

.field private mLongExposureMode:Z

.field private mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mNeedResetFocusState:Z

.field private mNeedResetTouchFocus:Z

.field private mNeedResetTouchType:I

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mRecordingStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

.field private mSuperAntVideoValue:Ljava/lang/String;

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mWideCameraValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentMode(Lcom/transsion/camera/feature/setting/focus/Focus;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusParameterConfigure(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAutoFocusTriggered(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEvChanging(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInitValue(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShowUI(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastFocusState(Lcom/transsion/camera/feature/setting/focus/Focus;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLastFocusState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedResetFocusState(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedResetTouchFocus(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedResetTouchType(Lcom/transsion/camera/feature/setting/focus/Focus;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAutoFocusTriggered(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEvChanging(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPreviewStarted(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShowUI(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedResetFocusState(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedResetTouchFocus(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSuperAntVideoValue(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSuperAntVideoValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWideCameraValue(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mWideCameraValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoResetTouchFocus(Lcom/transsion/camera/feature/setting/focus/Focus;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->doResetTouchFocus(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misTimeLapseAndRecording(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isTimeLapseAndRecording()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monFocusStateUpdate(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->onFocusStateUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessManualFocus(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->processManualFocus(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetFocusArea(Lcom/transsion/camera/feature/setting/focus/Focus;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendFocusMessage(Lcom/transsion/camera/feature/setting/focus/Focus;IJ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/focus/Focus;->sendFocusMessage(IJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Focus"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    .line 42
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 44
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    .line 46
    sget-object v2, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    .line 51
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 52
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    const/4 v2, 0x1

    .line 57
    iput v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 58
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 59
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    .line 61
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLaserFocusSupport:Z

    .line 63
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    .line 64
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLongExposureMode:Z

    .line 65
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 66
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mAutoFocus:Z

    .line 67
    new-instance v1, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/feature/setting/focus/Focus-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    .line 322
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus$1;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    .line 499
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus$2;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 723
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus$3;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mRecordingStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method private checkAfEnv()Z
    .registers 5

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->isFocusCanDo()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_32

    .line 550
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    .line 551
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_31

    const-string v3, "continuous-picture"

    .line 552
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "continuous-video"

    .line 553
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 554
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getEntryValues not contains continuous"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_31
    return v2

    :cond_32
    :goto_32
    return v1
.end method

.method private doResetTouchFocus(I)V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doResetTouchFocus"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_16

    .line 291
    const-string v1, "key_focus_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "INACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    .line 295
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p0, :cond_22

    .line 297
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->restoreContinue()V

    :cond_22
    return-void
.end method

.method private handleAfLockRestore()V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleAfLockRestore] mLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 563
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    :cond_22
    return-void
.end method

.method private isLockActive()Z
    .registers 4

    .line 539
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 541
    :goto_18
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isLockActive] isLockActive =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private isTimeLapseAndRecording()Z
    .registers 3

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    .line 402
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_14
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private onFocusStateUpdate(Ljava/lang/String;)V
    .registers 7

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateUpdate mIsEvChanging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsAutoFocusTriggered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLastFocusState:Ljava/lang/String;

    .line 335
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    if-eqz v0, :cond_3f

    return-void

    .line 338
    :cond_3f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 341
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 343
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    if-eqz v0, :cond_72

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFocusStateUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_focus_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    :cond_72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_194

    goto :goto_b5

    :sswitch_7f
    const-string v0, "PASSIVE_SCAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto :goto_b5

    :cond_88
    const/4 v3, 0x4

    goto :goto_b5

    :sswitch_8a
    const-string v0, "ACTIVE_FOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto :goto_b5

    :cond_93
    const/4 v3, 0x3

    goto :goto_b5

    :sswitch_95
    const-string v0, "PASSIVE_FOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_b5

    :cond_9e
    const/4 v3, 0x2

    goto :goto_b5

    :sswitch_a0
    const-string v0, "ACTIVE_UNFOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_b5

    :cond_a9
    move v3, v2

    goto :goto_b5

    :sswitch_ab
    const-string v0, "PASSIVE_UNFOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto :goto_b5

    :cond_b4
    move v3, v1

    :goto_b5
    const-string v0, "[onFocusStateUpdate] ignore the state "

    packed-switch v3, :pswitch_data_1aa

    goto/16 :goto_18c

    .line 349
    :pswitch_bc
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFocusStateUpdate] passive focus start with state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 354
    :cond_ed
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    if-eqz p1, :cond_f9

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onFocusStateUpdate] disable update passive focus state "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_f9
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 359
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    goto/16 :goto_18c

    .line 374
    :pswitch_100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFocusStateUpdate] active focus done with state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , mLockState "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", needResetTouchType:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 376
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    .line 380
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13b

    .line 381
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    goto :goto_151

    .line 383
    :cond_13b
    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    if-lez p1, :cond_151

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isTimeLapseAndRecording()Z

    move-result p1

    if-nez p1, :cond_151

    .line 384
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    .line 385
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 386
    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, p1, v2, v3}, Lcom/transsion/camera/feature/setting/focus/Focus;->sendFocusMessage(IJ)V

    .line 389
    :cond_151
    :goto_151
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    if-eqz p1, :cond_18c

    .line 390
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    .line 391
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->updateTouchCapture()V

    goto :goto_18c

    .line 366
    :pswitch_15b
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFocusStateUpdate] passive focus done with state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 397
    :cond_18c
    :goto_18c
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onFocusStateUpdate]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :sswitch_data_194
    .sparse-switch
        0x1d09b766 -> :sswitch_ab
        0x2c1b7ca5 -> :sswitch_a0
        0x4b74c21f -> :sswitch_95
        0x5664cb1e -> :sswitch_8a
        0x5b4248b5 -> :sswitch_7f
    .end sparse-switch

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_15b
        :pswitch_100
        :pswitch_15b
        :pswitch_100
        :pswitch_bc
    .end packed-switch
.end method

.method private processManualFocus(Ljava/lang/String;)V
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processManualFocus] focusValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 593
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    if-eqz v0, :cond_be

    if-nez p1, :cond_1e

    goto/16 :goto_be

    .line 597
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetTouchFocusView()V

    .line 600
    const-string v0, "continuous-picture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "auto"

    if-eqz v2, :cond_34

    .line 601
    iput v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_41

    .line 602
    :cond_34
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x2

    .line 603
    iput v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_41

    :cond_3e
    const/4 v2, 0x0

    .line 605
    iput v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 608
    :goto_41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 609
    const-string p1, "fixed"

    .line 612
    :cond_4f
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLongExposureMode:Z

    if-nez v0, :cond_5f

    .line 613
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processManualFocus, preview is not started!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 617
    :cond_5f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processManualFocus is same, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 622
    :cond_80
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->checkAfEnv()Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_be

    .line 626
    :cond_87
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->handleAfLockRestore()V

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz v0, :cond_91

    .line 629
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 631
    :cond_91
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processManualFocus, updateFocusMode value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 634
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_be

    .line 635
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_be
    :goto_be
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private resetFocusArea()V
    .registers 2

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 534
    invoke-interface {p0, v0, v0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method private resetTouchFocusView()V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_focus_state"

    if-eqz v0, :cond_f

    .line 308
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "INACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "ACTIVE_HIDE_FOCUSE_VIEW"

    if-eqz v0, :cond_1c

    .line 312
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 v0, 0x0

    .line 318
    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_26
    return-void
.end method

.method private sendFocusMessage(IJ)V
    .registers 8

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    .line 583
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    const/4 v2, 0x0

    if-nez v0, :cond_19

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 587
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_22
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateTouchCapture()V
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 485
    invoke-static {}, Lcom/transsion/camera/feature/setting/focus/LockRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 486
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    if-eqz p0, :cond_d

    const-string p0, "on"

    goto :goto_f

    :cond_d
    const-string p0, "off"

    :goto_f
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 484
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method


# virtual methods
.method public changeFocusModeWhileRecord()Z
    .registers 3

    .line 739
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsVideoMode:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_12

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportContinuousVideoFocus:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 213
    const-string p0, "key_focus"

    return-object p0
.end method

.method public getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 777
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    if-nez v0, :cond_16

    .line 230
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    .line 231
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 232
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocusController;->setFocusStateListener(Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;)V

    .line 236
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getRecordingStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;
    .registers 1

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mRecordingStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 208
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 2

    .line 218
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    if-eqz v0, :cond_d

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_professional"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLongExposureMode:Z

    if-eqz v0, :cond_1a

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_long_exposure_scene"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 224
    :cond_1a
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public holdManualFocusState(Z)Z
    .registers 4

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSuperAntVideoValue:Ljava/lang/String;

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mWideCameraValue:Ljava/lang/String;

    const-string v1, "on"

    .line 768
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_28
    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mAutoFocus:Z

    return p1
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 83
    new-instance p2, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 85
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLaserFocusSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLaserFocusSupport:Z

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_50

    .line 87
    const-string p1, "key_exposure_view"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 88
    const-string p1, "capture_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 89
    const-string p1, "key_exposure_scroll_start_and_hide"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 90
    const-string p1, "key_manual_focus"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 91
    const-string p1, "screen_form_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 92
    const-string p1, "exposure_hide"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 93
    const-string p1, "key_super_anti_video"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 94
    const-string/jumbo p1, "wide_camera"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 95
    const-string p1, "key_fold_switch_preview"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 96
    const-string p1, "key_setting_focus_distance"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_39

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_39

    :cond_38
    move-object p2, v0

    .line 140
    :cond_39
    :goto_39
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 141
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 142
    const-string p1, "continuous-picture"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "continuous-video"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_5f

    .line 144
    :cond_4f
    const-string p1, "auto"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    const/4 p1, 0x2

    .line 145
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_61

    :cond_5b
    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_61

    .line 143
    :cond_5f
    :goto_5f
    iput v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 149
    :goto_61
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_68

    .line 150
    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 152
    :cond_68
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initValueAndSupport, setValue, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", needResetTouchType:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isAutoFocusMode()Z
    .registers 1

    .line 773
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mAutoFocus:Z

    return p0
.end method

.method laserFocusSupport()Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLaserFocusSupport:Z

    return p0
.end method

.method notifyModeChanged(Ljava/lang/String;)V
    .registers 3

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_d

    .line 577
    const-string v0, "key_focus_mode"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onModeClosed]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const/4 v0, 0x1

    .line 189
    iput v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 194
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    .line 195
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 196
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsDualVideoMode:Z

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsVideoMode:Z

    .line 198
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_36

    const-string v0, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 200
    const-string p1, "key_record_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 6

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 159
    const-string v0, "key_professional"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    .line 160
    const-string v0, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsDualVideoMode:Z

    .line 161
    const-string v0, "key_long_exposure_scene"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLongExposureMode:Z

    .line 162
    const-string p3, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsMoveMode:Z

    .line 163
    const-string p3, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsVlogMode:Z

    .line 164
    const-string p3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsVideoMode:Z

    const/4 p3, 0x0

    .line 165
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 166
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 167
    sget-object p2, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const/4 p2, 0x1

    .line 168
    iput p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 169
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 172
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsDualVideoMode:Z

    if-nez v1, :cond_5c

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsMoveMode:Z

    if-nez v1, :cond_5c

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsVlogMode:Z

    if-nez v1, :cond_5c

    goto :goto_5d

    :cond_5c
    move p2, p3

    :goto_5d
    const-string v1, "focus_ui_active"

    invoke-interface {v0, v1, p2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 175
    :cond_62
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    .line 177
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p2, :cond_77

    const-string p2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 178
    const-string p1, "key_record_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 180
    :cond_77
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened, mIsProfessionalMode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mLongExposureMode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLongExposureMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " , mModeType:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingStatusChanged()V
    .registers 6

    .line 744
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string v1, "continuous-picture"

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->getCurrentFocusMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->getCurrentFocusMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    .line 749
    :goto_14
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->holdManualFocusState(Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "auto"

    goto :goto_20

    :cond_1f
    move-object v2, v0

    .line 751
    :goto_20
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->changeFocusModeWhileRecord()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 752
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    if-eqz v2, :cond_2e

    .line 753
    const-string v1, "continuous-video"

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    .line 759
    :cond_2e
    :goto_2e
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onRecordingStatusChanged], mIsRecording:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,currentFocusMode\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , focusValue:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 761
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_62

    .line 762
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_62
    return-void
.end method

.method public onSatCameraChanged(I)V
    .registers 5

    .line 407
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onSatCameraChanged(I)V

    .line 408
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 411
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 412
    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedFocusModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 413
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 415
    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedFocusModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 417
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSatCameraChanged] supportedFocusModes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->isSupportedFocusModesEqual(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 419
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 420
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 421
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->initFocusMode(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_68
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 8

    .line 429
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    if-nez v0, :cond_c

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "preview is not started!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 434
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->checkAfEnv()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 438
    :cond_13
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_37

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChanged illegal value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_37
    const/4 p1, 0x1

    .line 444
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    const/4 v1, 0x0

    .line 445
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    .line 446
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 447
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->handleAfLockRestore()V

    .line 449
    new-instance v2, Landroid/graphics/Rect;

    .line 450
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    .line 451
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 456
    :try_start_81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 457
    new-instance v3, Lcom/transsion/camera/utils/SettingInfo$Area;

    invoke-direct {v3, v2}, Lcom/transsion/camera/utils/SettingInfo$Area;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 460
    new-instance v4, Lcom/transsion/camera/utils/SettingInfo$Area;

    invoke-direct {v4, v2}, Lcom/transsion/camera/utils/SettingInfo$Area;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_9b} :catch_ee

    .line 466
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    .line 467
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    const-string v2, "auto"

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 469
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onValueChanged, updateFocusMode value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v1, :cond_cd

    .line 471
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 473
    :cond_cd
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 474
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->autoFocus()V

    const/4 v1, 0x4

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 476
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    .line 477
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->updateTouchCapture()V

    .line 480
    :cond_e6
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onSingleTapUp]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 462
    :catch_ee
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onValueChanged IllegalArgumentException"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] + headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V

    :cond_40
    if-eqz p3, :cond_63

    .line 248
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_63

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string p3, "auto"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 249
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_63
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 1

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3f

    .line 108
    const-string v0, "key_exposure_view"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 109
    const-string v0, "capture_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 110
    const-string v0, "key_exposure_scroll_start_and_hide"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 111
    const-string v0, "key_manual_focus"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 112
    const-string v0, "screen_form_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 113
    const-string v0, "exposure_hide"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 114
    const-string v0, "key_super_anti_video"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "wide_camera"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 116
    const-string v0, "key_fold_switch_preview"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 117
    const-string v0, "key_setting_focus_distance"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 118
    const-string v0, "key_record_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_3f
    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
