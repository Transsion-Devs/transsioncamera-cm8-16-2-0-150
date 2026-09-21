.class public Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;
    }
.end annotation


# static fields
.field private static final BEEP_ONCE_ID:I

.field private static final BEEP_TWICE_ID:I

.field private static final CAMON_EFFECT_TYPE:I = 0x1

.field private static final COUNTDOWN_EIGHT_BEEPS_ID:I

.field private static final COUNTDOWN_FOUR_BEEPS_ID:I

.field private static final COUNTDOWN_NUMBER_1:I = 0x1

.field private static final COUNTDOWN_NUMBER_2:I = 0x2

.field private static final COUNTDOWN_NUMBER_3:I = 0x3

.field private static final COUNTDOWN_NUMBER_4:I = 0x4

.field private static final COUNTDOWN_ONCE_BEEPS_ID:I

.field private static final COUNTDOWN_TWICE_BEEPS_ID:I

.field private static final DEFAULT_EFFECT_TYPE:I = 0x0

.field private static final DEFAULT_NUM:I = 0x0

.field private static final SELF_TIMER_NUM_UPDATE:I = 0x3

.field private static final SELF_TIMER_ORIENTATION_UPDATE:I = 0x4

.field private static final SELF_TIMER_UPDATE_SHUTTER_ICON:I = 0x5

.field private static final SELF_TIMER_VIEW_HIDE:I = 0x2

.field private static final SELF_TIMER_VIEW_SHOW:I = 0x1

.field private static final START_SELF_TIMER_DEFAULT:I = 0x0

.field private static final START_SELF_TIMER_GESTURE:I = 0x2

.field private static final START_SELF_TIMER_VOICE:I = 0x1

.field private static final START_TIME_MAX:I = 0x1e

.field private static final START_TIME_MIN:I = 0x3

.field public static final STATE_SELF_TIMER_CAPTURE:Ljava/lang/String; = "self_timer_capture"

.field public static final STATE_SELF_TIMER_IDLE:Ljava/lang/String; = "self_timer_idle"

.field public static final STATE_SELF_TIMER_START:Ljava/lang/String; = "self_timer_start"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final UPDATE_DELAY_TIME:I = 0x3e8


# instance fields
.field private final mActionSoundLock:Ljava/lang/Object;

.field private mBeepEightSampleId:I

.field private mBeepFourSampleId:I

.field private mBeepOnceSampleId:I

.field private mBeepTwiceSampleId:I

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCountDownAnim:Landroid/view/animation/Animation;

.field private mCurSelfTimerNum:I

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentPriority:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

.field private mHasStartLoadSound:Z

.field private mIsFunVideoRecordingStart:Z

.field private mIsPause:Z

.field private mIsSuperNightLiteStart:Z

.field private mLongExposureCapturing:Z

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private final mResources:Landroid/content/res/Resources;

.field private mSelfTimerNumBeforeDelay:I

.field private mSelfTimerRoot:Landroid/view/ViewGroup;

.field private mSelfTimerSoundLoaded:Z

.field private volatile mSelfTimerState:Ljava/lang/String;

.field private mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mSelfTimerType:I

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mSoundEnable:Z

.field private final mSoundLoadStateWait:Lcom/transsion/camera/utils/StateWait;

.field private mStartSelfTimerNum:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method public static synthetic $r8$lambda$-EIj7xRWOtSrO1YAaWVu1RyNgDg(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1xPSjiGy8lH8W8U_sYFl8Guq6fQ(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$4(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Q7onKW3a6B_8dJ2fjhNTNJfsd0(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$startSelfTimerImmediately$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cUtjl6RaszwFXtc_ksD1nm702VY(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTs-yyJcoPb31lpQkWe6YkGhQqw(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vMeWfr-5D7AQn7Sipkl9x3rX874(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$3(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPriority(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelfTimerState(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoundEnable(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideSelfTimerView(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;ZZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadSelfTimerSoundIfNeed(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSelfTimerStatusChanged(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->onSelfTimerStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelfTimerView(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->showSelfTimerView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSelfTimerImmediately(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimerImmediately(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelfTimerNum(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateSelfTimerNum()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SelfTimerUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 82
    sget v0, Lcom/transsion/camera/R$raw;->beep_once:I

    sput v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->BEEP_ONCE_ID:I

    .line 83
    sget v0, Lcom/transsion/camera/R$raw;->beep_twice:I

    sput v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->BEEP_TWICE_ID:I

    .line 85
    sget v0, Lcom/transsion/camera/R$raw;->countdown_eight_beeps:I

    sput v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->COUNTDOWN_EIGHT_BEEPS_ID:I

    .line 86
    sget v0, Lcom/transsion/camera/R$raw;->countdown_four_beeps:I

    sput v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->COUNTDOWN_FOUR_BEEPS_ID:I

    .line 87
    sget v0, Lcom/transsion/camera/R$raw;->countdown_twice_beeps:I

    sput v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->COUNTDOWN_TWICE_BEEPS_ID:I

    .line 88
    sget v0, Lcom/transsion/camera/R$raw;->countdown_once_beep:I

    sput v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->COUNTDOWN_ONCE_BEEPS_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mHasStartLoadSound:Z

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundLoadStateWait:Lcom/transsion/camera/utils/StateWait;

    .line 106
    const-string v1, "self_timer_idle"

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 113
    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    .line 115
    const-string v1, "0"

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentCameraId:Ljava/lang/String;

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsSuperNightLiteStart:Z

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mLongExposureCapturing:Z

    .line 693
    new-instance v1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 127
    sget-object v1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    .line 129
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    .line 131
    new-instance v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    .line 132
    sget v0, Lcom/transsion/camera/R$integer;->self_timer_sound_effect_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerType:I

    .line 133
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAodFlipFunnyShotSupport:Z

    if-eqz v0, :cond_71

    .line 135
    const-string v0, "com.transsion.camera.ui.setting.selftimer.FlipFunnyShot"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    :cond_71
    return-void
.end method

.method private hideSelfTimerTextView()V
    .registers 2

    .line 688
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz p0, :cond_8

    const/4 v0, 0x4

    .line 689
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private hideSelfTimerView(ZZ)V
    .registers 6

    .line 612
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSelfTimerView, needUpdateStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 613
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz v0, :cond_36

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepFourSampleId:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepEightSampleId:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    :cond_36
    if-eqz p1, :cond_3f

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    const/16 v0, 0x6c

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    .line 623
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p1, 0x0

    .line 624
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    .line 625
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    if-eqz p1, :cond_4e

    .line 626
    invoke-interface {p1}, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;->hide()V

    .line 628
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    if-eqz p2, :cond_6a

    .line 631
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p2, 0xc

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 632
    const-string p1, "status_self_timer_end"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    .line 634
    :cond_6a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private hookTranLed()V
    .registers 6

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_mood_light"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 652
    :cond_11
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMoodLightV2Support:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_38

    .line 653
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    if-eq v0, v2, :cond_30

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2a

    const/16 v0, 0x6f

    goto :goto_32

    :cond_2a
    const/16 v0, 0x70

    goto :goto_32

    :cond_2d
    const/16 v0, 0x71

    goto :goto_32

    :cond_30
    const/16 v0, 0x72

    .line 668
    :goto_32
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    return-void

    .line 670
    :cond_38
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_7e

    :goto_49
    move v1, v4

    goto :goto_69

    :sswitch_4b
    const-string v2, "10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_49

    :sswitch_54
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_49

    :cond_5d
    move v1, v2

    goto :goto_69

    :sswitch_5f
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_49

    :cond_68
    const/4 v1, 0x0

    :cond_69
    :goto_69
    packed-switch v1, :pswitch_data_8c

    const/16 v0, 0x6c

    goto :goto_77

    :pswitch_6f
    const/16 v0, 0x6b

    goto :goto_77

    :pswitch_72
    const/16 v0, 0x6a

    goto :goto_77

    :pswitch_75
    const/16 v0, 0x69

    .line 683
    :goto_77
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        0x33 -> :sswitch_5f
        0x35 -> :sswitch_54
        0x61f -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_75
        :pswitch_72
        :pswitch_6f
    .end packed-switch
.end method

.method private interruptTimer()V
    .registers 3

    .line 496
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "interruptTimer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 500
    const-string v0, "status_self_timer_cancel"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    .line 501
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_26

    const/16 v0, 0x191

    .line 502
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_26
    return-void
.end method

.method private interruptTimerDirectly(Z)V
    .registers 4

    .line 487
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "interruptTimerDirectly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    .line 492
    const-string p1, "self_timer_idle"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-void
.end method

.method private isMainThread()Z
    .registers 2

    .line 483
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$loadSelfTimerSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 793
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 795
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    .line 797
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadSelfTimerSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 802
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 804
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    .line 806
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadSelfTimerSound$3(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 811
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 813
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepFourSampleId:I

    .line 815
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadSelfTimerSound$4(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 820
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 822
    :cond_d
    iput p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepEightSampleId:I

    .line 824
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private synthetic lambda$loadSelfTimerSound$5(Ljava/lang/Runnable;)V
    .registers 5

    .line 826
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundLoadCompleteCallback, done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 827
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    .line 828
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundLoadStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    if-eqz p1, :cond_23

    .line 830
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_23
    return-void
.end method

.method private synthetic lambda$startSelfTimerImmediately$0(I)V
    .registers 3

    .line 749
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    if-nez v0, :cond_7

    .line 750
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer(I)V

    :cond_7
    return-void
.end method

.method private loadSelfTimerSound(Ljava/lang/Runnable;)V
    .registers 6

    .line 774
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    if-nez v0, :cond_a

    goto/16 :goto_88

    .line 782
    :cond_a
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSelfTimerSound done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mHasStartLoadSound\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mHasStartLoadSound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 783
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mHasStartLoadSound:Z

    if-eqz v0, :cond_2f

    goto :goto_8d

    .line 787
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_8d

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-nez v1, :cond_8d

    const/4 v1, 0x1

    .line 788
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mHasStartLoadSound:Z

    .line 789
    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerType:I

    if-ne v2, v1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    if-eqz v1, :cond_45

    .line 790
    sget v2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->COUNTDOWN_ONCE_BEEPS_ID:I

    goto :goto_47

    :cond_45
    sget v2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->BEEP_ONCE_ID:I

    :goto_47
    new-instance v3, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_56

    sget v2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->COUNTDOWN_TWICE_BEEPS_ID:I

    goto :goto_58

    :cond_56
    sget v2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->BEEP_ONCE_ID:I

    :goto_58
    new-instance v3, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_67

    sget v2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->COUNTDOWN_FOUR_BEEPS_ID:I

    goto :goto_69

    :cond_67
    sget v2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->BEEP_ONCE_ID:I

    :goto_69
    new-instance v3, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_78

    sget v1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->COUNTDOWN_EIGHT_BEEPS_ID:I

    goto :goto_7a

    :cond_78
    sget v1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->BEEP_TWICE_ID:I

    :goto_7a
    new-instance v2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    new-instance v3, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;)V

    return-void

    :cond_88
    :goto_88
    if-eqz p1, :cond_8d

    .line 778
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private loadSelfTimerSoundIfNeed()V
    .registers 2

    const/4 v0, 0x0

    .line 770
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSound(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSelfTimerStatusChanged(Ljava/lang/String;)V
    .registers 4

    .line 758
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_28

    if-eqz p1, :cond_28

    .line 759
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    .line 760
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 763
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    return-void

    .line 765
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private querySettingValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 850
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 851
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private realCapture()V
    .registers 3

    .line 442
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[realCapture]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 443
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    if-eqz v0, :cond_10

    .line 444
    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    .line 447
    :cond_10
    const-string v0, "self_timer_capture"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 448
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_2b

    :cond_21
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x8c

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 453
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateTriggerSelfTimerPriority(I)V

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    .line 456
    const-string v0, "self_timer_idle"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-void
.end method

.method private sendStatusChanged(Ljava/lang/String;)V
    .registers 3

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 509
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method private showSelfTimerView()V
    .registers 3

    .line 638
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSelfTimerView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 639
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    if-eqz v0, :cond_18

    .line 642
    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;->startFunnyShot()V

    .line 644
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hookTranLed()V

    return-void
.end method

.method private startSelfTimer(I)V
    .registers 4

    .line 460
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    .line 461
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "startSelfTimer mEntryRootLayout is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 464
    :cond_e
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startSelfTimer]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    goto :goto_29

    .line 468
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOn()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 470
    :goto_29
    const-string p1, "self_timer_start"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 471
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 473
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 474
    const-string p1, "status_self_timer_begin"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->showSelfTimerView()V

    return-void

    .line 478
    :cond_4c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startSelfTimerImmediately(Ljava/lang/String;I)V
    .registers 6

    .line 723
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startSelfTimerImmediately] selfTimerNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSelfTimerSoundLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 724
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_31

    :goto_2f
    move p1, v1

    goto :goto_36

    :cond_31
    const/16 v1, 0x1e

    if-le p1, v1, :cond_36

    goto :goto_2f

    .line 730
    :cond_36
    :goto_36
    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    iput v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    .line 731
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    .line 732
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz p1, :cond_44

    .line 733
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer(I)V

    return-void

    .line 735
    :cond_44
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mHasStartLoadSound:Z

    if-eqz p1, :cond_6b

    .line 736
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundLoadStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 738
    :try_start_4d
    const-string p1, "startSelfTimerImmediately wait for sound load"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 739
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundLoadStateWait:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V

    .line 740
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    if-nez p1, :cond_65

    .line 741
    const-string p1, "startSelfTimerImmediately wait for sound load finish"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 742
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer(I)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_65} :catch_66

    :cond_65
    return-void

    :catch_66
    move-exception p0

    .line 745
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 748
    :cond_6b
    new-instance p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSound(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unloadSelfTimerSound()V
    .registers 4

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_28

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz v2, :cond_28

    .line 839
    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 840
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 841
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepFourSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 842
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepEightSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_30

    :cond_28
    :goto_28
    const/4 v1, 0x0

    .line 844
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mHasStartLoadSound:Z

    const/4 v1, 0x0

    .line 845
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 846
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_26

    throw p0
.end method

.method private updateRootLayoutRect()V
    .registers 6

    .line 857
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 861
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 862
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 863
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 864
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 865
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelfTimerLayout()V
    .registers 12

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0x9

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0xa

    .line 185
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v4, 0xb

    .line 186
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v5, 0xc

    .line 187
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v6, 0xf

    .line 188
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v7, 0xe

    .line 189
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v8, 0xd

    .line 190
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 191
    iget v9, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_94

    .line 192
    iget v8, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_75

    const/16 v2, 0xb4

    if-eq v8, v2, :cond_64

    const/16 v2, 0x10e

    if-eq v8, v2, :cond_53

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 212
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->aod_self_timer_view_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_85

    .line 204
    :cond_53
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->aod_self_timer_view_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_85

    .line 199
    :cond_64
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 200
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->aod_self_timer_view_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_85

    .line 194
    :cond_75
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->aod_self_timer_view_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 215
    :goto_85
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_self_timer_text_size:I

    .line 216
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 215
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_a5

    .line 218
    :cond_94
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->self_timer_text_size:I

    .line 220
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 219
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    :goto_a5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelfTimerNum()V
    .registers 7

    .line 547
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    .line 548
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateSelfTimerNum mEntryRootLayout is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 551
    :cond_e
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSelfTimer] mCurSelfTimerNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mSelfTimerSoundLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 552
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_12c

    .line 553
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_9a

    const/4 v3, 0x7

    if-eq v0, v3, :cond_9a

    if-nez v0, :cond_83

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v0, v3, :cond_83

    .line 560
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->translation_normal_full_screen_above_center:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_81
    int-to-float v0, v0

    goto :goto_92

    .line 562
    :cond_83
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->translation_hover_support_above_center:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_81

    .line 564
    :goto_92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v3

    neg-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 566
    :cond_9a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_ad

    .line 567
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 571
    :cond_ad
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    if-eqz v0, :cond_b4

    .line 572
    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;->startAnim()V

    .line 574
    :cond_b4
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCurrentModeName:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 575
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d5

    const-string v0, "on"

    const-string v3, "key_live_photo"

    .line 576
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->querySettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d5

    move v1, v2

    .line 577
    :cond_d5
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    const/4 v3, 0x3

    if-eqz v0, :cond_114

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz v0, :cond_114

    if-nez v1, :cond_114

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_e3
    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    if-eq v1, v2, :cond_109

    const/4 v4, 0x2

    if-eq v1, v4, :cond_101

    if-eq v1, v3, :cond_f9

    const/4 v4, 0x4

    if-eq v1, v4, :cond_f9

    .line 591
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {v1, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    goto :goto_110

    :catchall_f7
    move-exception p0

    goto :goto_112

    .line 588
    :cond_f9
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {v1, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    goto :goto_110

    .line 584
    :cond_101
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepFourSampleId:I

    invoke-interface {v1, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    goto :goto_110

    .line 581
    :cond_109
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepEightSampleId:I

    invoke-interface {v1, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 594
    :goto_110
    monitor-exit v0

    goto :goto_114

    :goto_112
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_e3 .. :try_end_113} :catchall_f7

    throw p0

    .line 596
    :cond_114
    :goto_114
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMoodLightV2Support:Z

    if-eqz v0, :cond_11f

    .line 597
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hookTranLed()V

    .line 599
    :cond_11f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 600
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    return-void

    .line 603
    :cond_12c
    const-string v0, "on"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v4, "key_mood_light"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_149

    move v1, v2

    .line 606
    :cond_149
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    .line 607
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->realCapture()V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 158
    sget v0, Lcom/transsion/camera/R$layout;->self_timer_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 159
    sget v0, Lcom/transsion/camera/R$id;->self_timer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerRoot:Landroid/view/ViewGroup;

    .line 160
    sget v0, Lcom/transsion/camera/R$id;->self_timer_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->selftimerui_use_layer_type_software:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 162
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "use LAYER_TYPE_SOFTWARE"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 165
    :cond_35
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerTextView()V

    .line 166
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$anim;->count_down_exit:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    if-eqz v0, :cond_4d

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    :cond_4d
    return-object p2
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 298
    const-string p0, "key_self_timer"

    return-object p0
.end method

.method protected getSelfTimerRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    if-eqz p0, :cond_a

    .line 144
    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;->init(I)V

    :cond_a
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5d

    const/16 v1, 0xe

    if-eq p1, v1, :cond_5a

    const/16 v1, 0x11

    if-eq p1, v1, :cond_5d

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-eq p1, v1, :cond_51

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4e

    const/16 v1, 0x4d

    if-eq p1, v1, :cond_5d

    const/16 v1, 0x55

    if-eq p1, v1, :cond_5d

    const/16 v1, 0xa5

    if-eq p1, v1, :cond_4b

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_48

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_45

    const/16 v1, 0xed

    if-eq p1, v1, :cond_42

    const/16 v1, 0xee

    if-eq p1, v1, :cond_5a

    const/16 v1, 0x111

    if-eq p1, v1, :cond_3f

    const/16 v1, 0x112

    if-eq p1, v1, :cond_3c

    goto :goto_6a

    .line 383
    :cond_3c
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mLongExposureCapturing:Z

    return-void

    .line 380
    :cond_3f
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mLongExposureCapturing:Z

    return-void

    .line 369
    :cond_42
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsSuperNightLiteStart:Z

    return-void

    .line 366
    :cond_45
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    return-void

    .line 363
    :cond_48
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    return-void

    .line 377
    :cond_4b
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsSuperNightLiteStart:Z

    return-void

    .line 346
    :cond_4e
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    return-void

    .line 349
    :cond_51
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    .line 350
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    .line 351
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsSuperNightLiteStart:Z

    .line 352
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mLongExposureCapturing:Z

    goto :goto_5d

    .line 373
    :cond_5a
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsSuperNightLiteStart:Z

    return-void

    .line 358
    :cond_5d
    :goto_5d
    const-string p1, "self_timer_start"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 359
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimerDirectly(Z)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 5

    .line 431
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed ,pressBackKey :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    .line 433
    const-string p1, "self_timer_start"

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 434
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimer()V

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged()V
    .registers 3

    .line 316
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onConfigurationChanged()V

    .line 317
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    const-string v0, "self_timer_start"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 319
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimerDirectly(Z)V

    :cond_18
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 303
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 v0, 0x6

    .line 304
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v1, :cond_11

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_11

    goto :goto_1e

    .line 308
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz v0, :cond_1e

    .line 309
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateSelfTimerLayout()V

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 150
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    if-eqz p0, :cond_a

    .line 152
    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;->onScreenFormChanged(I)V

    :cond_a
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 5

    .line 391
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    .line 392
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    return p2

    .line 395
    :cond_8
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mLongExposureCapturing:Z

    if-eqz p1, :cond_d

    return p2

    .line 399
    :cond_d
    sget-object p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSuperNightLiteStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsSuperNightLiteStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsSuperNightLiteStart:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2b

    return v0

    .line 404
    :cond_2b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v1, "self_timer_capture"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    return v0

    .line 407
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v1, "self_timer_start"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 408
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimer()V

    return v0

    .line 411
    :cond_44
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "off"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    iget p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateTriggerSelfTimerPriority(I)V

    return p2

    .line 415
    :cond_58
    iget p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimerImmediately(Ljava/lang/String;I)V

    return v0
.end method

.method public onShutterLongClick(II)Z
    .registers 6

    .line 421
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onShutterLongClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v2, "self_timer_idle"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 423
    const-string p0, "intercept long click event when self timer start"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 426
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterLongClick(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    if-eqz v0, :cond_9

    .line 229
    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 231
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_15

    .line 232
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 235
    :cond_15
    const-string p1, "key_shutter_sound"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->querySettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->onSelfTimerStatusChanged(Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_c

    .line 255
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_c
    sget-object p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "register status"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_shutter_sound"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_start_self_timer"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_start_gesture_self_timer"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 3

    .line 330
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_9

    const/16 v0, 0xa

    .line 332
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_9
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateSelfTimerLayout()V

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 267
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 269
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_36

    .line 271
    const-string v2, "key_shutter_sound"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_self_timer"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_start_self_timer"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_start_gesture_self_timer"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 276
    :cond_36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->unloadSelfTimerSound()V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_47

    .line 279
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 280
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    .line 282
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mFlipFunnyShot:Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;

    if-eqz p0, :cond_4e

    .line 283
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/selftimer/IFlipFunnyShot;->unInit()V

    :cond_4e
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 243
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateRootLayoutRect()V

    return-void
.end method
