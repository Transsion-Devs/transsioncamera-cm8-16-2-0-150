.class public Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;
.super Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;,
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$StrengthModeChangeListener;,
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;,
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUST_UI_HIDE:I = 0xd

.field private static final ADJUST_UI_HIDE_ALL:I = 0xa

.field private static final ADJUST_UI_HIDE_BY_EXPOSURE:I = 0xe

.field private static final ADJUST_UI_HIDE_DELAY:I = 0x1388

.field private static final ADJUST_UI_SHOW_FLASH_CLICK:I = 0xc

.field private static final ADJUST_UI_SHOW_PREVIEW_STARTED:I = 0xb

.field private static final ADJUST_UI_SPREAD_HIDE_ANIMATOR_END:I = 0x9

.field private static final ADJUST_UI_SPREAD_HIDE_ANIMATOR_START:I = 0x8

.field private static final CAMERA_FACING_BACK:I = 0x0

.field private static final CAMERA_FACING_FRONT:I = 0x1

.field private static final DUAL_FRONT_FLASH_STATE_KEY:Ljava/lang/String; = "dual_front_flash_state_key"

.field private static final FRONT_DUAL_FLASH_COLD_TEMP:I = 0x3

.field private static final FRONT_DUAL_FLASH_DEFAULT_TEMP:I = 0x2

.field private static final FRONT_DUAL_FLASH_HIGH_STRENGTH:I = 0x2

.field private static final FRONT_DUAL_FLASH_LOW_STRENGTH:I = 0x0

.field private static final FRONT_DUAL_FLASH_MIDDLE_STRENGTH:I = 0x1

.field private static final FRONT_DUAL_FLASH_UI_HIDE_STATE:I = 0x0

.field private static final FRONT_DUAL_FLASH_UI_INIT_STATE:I = -0x1

.field private static final FRONT_DUAL_FLASH_UI_SHOW_STATE:I = 0x1

.field private static final FRONT_DUAL_FLASH_WARM_TEMP:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mColdColorTempLayout:Landroid/widget/FrameLayout;

.field private mCurrentModeNonsupportDualColor:Z

.field private mCurrentState:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultColorTempLayout:Landroid/widget/FrameLayout;

.field private mDefaultFlashStrengthMode:I

.field private mFilterUIShown:Z

.field private mFlashColorLayout:Landroid/widget/RelativeLayout;

.field private mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

.field private mFlashStrengthLayout:Landroid/widget/RelativeLayout;

.field private mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

.field private mFrontDualFlashAdjustLayout:Landroid/widget/RelativeLayout;

.field private final mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private final mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private final mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mInIntentVideoReview:Z

.field private mIsDocumentEnter:Z

.field private mIsInSettingFragment:Z

.field private mIsInWaterMarkFragment:Z

.field private mIsLuminanceAdjustSupported:Z

.field private mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mLuminanceAdjustSupportForCamera:[I

.field private mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mSelectedStrengthMode:I

.field private mShowBySetting:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStrengthModeProgressBarHeight:I

.field private mStrengthModeProgressBarWidth:I

.field private mThrLevelLuminanceRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mWarmColorTempLayout:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$YuH59vA_6tEapLhEUrBQDLZrY2I(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b-BvwUFCBYX5Qu9UbgXoy2k8jS4(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->lambda$loadAdjustUI$1(Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fBTMk_ITCnjPblGQJejz1T0Jnfo(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 135
    const/4 p0, 0x1

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeNonsupportDualColor(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentModeNonsupportDualColor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentModeNonsupportDualColor(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentModeNonsupportDualColor:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedStrengthMode(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessFrontDualFlashClick(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->processFrontDualFlashClick()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessLuminancePreviewStart(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->processLuminancePreviewStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSpreadBarSwitchDelay(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->removeSpreadBarSwitchDelay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEmptyMessageIfSameThread(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Landroid/os/Handler;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->sendEmptyMessageIfSameThread(Landroid/os/Handler;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtriggerAdjustUIHide(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->triggerAdjustUIHide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateColorTempState(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateColorTempState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFrontFlashUIState(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSpreadBarDelay(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateSpreadBarDelay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStrengthModeState(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateStrengthModeState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DualFlashAdjustUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;I)V
    .registers 4

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 78
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStrengthModeProgressBarWidth:I

    .line 99
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStrengthModeProgressBarHeight:I

    .line 100
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsDocumentEnter:Z

    .line 101
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFilterUIShown:Z

    .line 102
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInSettingFragment:Z

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mInIntentVideoReview:Z

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInWaterMarkFragment:Z

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mShowBySetting:Z

    .line 257
    new-instance p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 116
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 117
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-direct {p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 118
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-direct {p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 119
    iput p3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultFlashStrengthMode:I

    .line 120
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLuminanceAdjustSupportForCamera:[I

    .line 121
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSupportValuesForCamera: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLuminanceAdjustSupportForCamera:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mThrLevelLuminanceSupported:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFoldType:I

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    return-void
.end method

.method static synthetic access$302(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    return-void
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$802(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$902(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method private enterSettingFragment()V
    .registers 3

    .line 1026
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1027
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    const/4 v0, 0x0

    .line 1028
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 1029
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mShowBySetting:Z

    :cond_e
    return-void
.end method

.method private exitSettingFragment()V
    .registers 2

    .line 1034
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mShowBySetting:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-nez v0, :cond_b

    .line 1035
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->showAdjustUI()V

    :cond_b
    const/4 v0, 0x0

    .line 1037
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mShowBySetting:Z

    return-void
.end method

.method private facingFront()Z
    .registers 1

    .line 784
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 787
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private hideColorLayoutIfNeed()V
    .registers 5

    .line 791
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideColorLayoutIfNeed: facingFront:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mFrontDualFlashSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFrontDualFlashSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 792
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mThrLevelLuminanceSupported:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFoldType:I

    if-eqz v0, :cond_47

    .line 793
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->camFacingSupport()Z

    move-result v0

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFilterUIShown:Z

    if-eqz v0, :cond_3f

    goto :goto_43

    .line 797
    :cond_3f
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFlashColorLayoutVisibility(I)V

    return-void

    .line 795
    :cond_43
    :goto_43
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFlashColorLayoutVisibility(I)V

    return-void

    .line 800
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_57

    .line 801
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->shouldShowFlashStrengthLayout()Z

    move-result v3

    if-eqz v3, :cond_53

    move v3, v2

    goto :goto_54

    :cond_53
    move v3, v1

    :goto_54
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 803
    :cond_57
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->shouldShowFlashColorLayout()Z

    move-result v0

    if-eqz v0, :cond_5e

    move v1, v2

    :cond_5e
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFlashColorLayoutVisibility(I)V

    return-void
.end method

.method private hideFlashColorUI()V
    .registers 2

    .line 832
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 833
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private isFlashModeOff()Z
    .registers 3

    .line 767
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 770
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string v0, "off"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isLuminanceAdjustSupported()Z
    .registers 7

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLuminanceAdjustSupportForCamera:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_16

    aget v4, v0, v3

    .line 826
    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsLuminanceAdjustSupported:Z

    if-lez v4, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    move v4, v2

    :goto_10
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsLuminanceAdjustSupported:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 828
    :cond_16
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsLuminanceAdjustSupported:Z

    return p0
.end method

.method private synthetic lambda$loadAdjustUI$1(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 4

    const/4 p1, -0x1

    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_8

    goto :goto_12

    .line 146
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 147
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_13

    :goto_12
    return-void

    .line 150
    :cond_13
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x3

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_6

    goto/16 :goto_8d

    .line 261
    :cond_6
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_super_definition"

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_30

    :cond_2c
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->querySupportedEntryValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_30
    if-eqz v0, :cond_3a

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    .line 264
    :goto_3b
    const-string v0, "key_video_portrait"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 265
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-eqz v2, :cond_4f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsDocumentEnter:Z

    if-eqz v0, :cond_5f

    :cond_4f
    const-string v0, "key_360_video_hdr"

    .line 266
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "key_anti_video"

    .line 267
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 268
    :cond_5f
    const-string v0, "on"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    :cond_6e
    const-string v0, "key_iso"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "key_exposure_time"

    .line 273
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 274
    :cond_7e
    const-string p1, "auto"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8d
    :goto_8d
    return-void
.end method

.method private processFrontDualFlashClick()V
    .registers 3

    .line 668
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->showAdjustUI()V

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_adjust_ui_show_and_hide_ae_lock"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private processLuminancePreviewStart()V
    .registers 4

    .line 591
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLuminancePreviewStart mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 592
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-nez v0, :cond_20

    .line 593
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    return-void

    .line 595
    :cond_20
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->showAdjustUI()V

    return-void
.end method

.method private refreshUIState(I)V
    .registers 2

    .line 740
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateColorTempState(I)V

    return-void
.end method

.method private removeSpreadBarSwitchDelay()V
    .registers 2

    .line 691
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 692
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    return-void
.end method

.method private sendEmptyMessageIfSameThread(Landroid/os/Handler;I)V
    .registers 4

    .line 658
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_14

    .line 659
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 660
    iput p2, p0, Landroid/os/Message;->what:I

    .line 661
    invoke-virtual {p1, p0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 663
    :cond_14
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private shouldShowFlashColorLayout()Z
    .registers 3

    .line 814
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result v0

    .line 815
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLuminanceAdjustSupportForCamera:[I

    aget v0, v1, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentModeNonsupportDualColor:Z

    if-nez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowFlashStrengthLayout()Z
    .registers 2

    .line 819
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result v0

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLuminanceAdjustSupportForCamera:[I

    aget p0, p0, v0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private triggerAdjustUIHide()V
    .registers 2

    .line 281
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-nez v0, :cond_5

    goto :goto_19

    .line 284
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->camFacingSupport()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_19

    :cond_12
    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    :cond_19
    :goto_19
    return-void
.end method

.method private updateColorTempState(I)V
    .registers 7

    .line 312
    const-string v0, ""

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_cb

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6e

    const/4 v4, 0x3

    if-eq p1, v4, :cond_10

    goto/16 :goto_127

    .line 354
    :cond_10
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mThrLevelLuminanceSupported:Z

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFoldType:I

    if-nez p1, :cond_3c

    .line 355
    :cond_18
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_24

    .line 356
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 359
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_30

    .line 360
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 363
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3c

    .line 364
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 368
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultFlashStrengthMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 369
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    .line 370
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto/16 :goto_127

    .line 334
    :cond_6e
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mThrLevelLuminanceSupported:Z

    if-eqz p1, :cond_76

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFoldType:I

    if-nez p1, :cond_9a

    .line 335
    :cond_76
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_82

    .line 336
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 339
    :cond_82
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8e

    .line 340
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 343
    :cond_8e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_9a

    .line 344
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 348
    :cond_9a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultFlashStrengthMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 349
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_127

    .line 314
    :cond_cb
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mThrLevelLuminanceSupported:Z

    if-eqz p1, :cond_d3

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFoldType:I

    if-nez p1, :cond_f7

    .line 315
    :cond_d3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_df

    .line 316
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 319
    :cond_df
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_eb

    .line 320
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 323
    :cond_eb
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_f7

    .line 324
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 328
    :cond_f7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultFlashStrengthMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 329
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 376
    :goto_127
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateStrengthModeState(I)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz p1, :cond_139

    .line 378
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStrengthModeProgressBarWidth:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStrengthModeProgressBarHeight:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setStrengthMode(III)V

    :cond_139
    return-void
.end method

.method private updateFlashColorLayoutVisibility(I)V
    .registers 2

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_7

    .line 809
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private updateFrontDualFlashTemValue(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V
    .registers 5

    .line 1057
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrontDualFlashTemValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFrontDualFlashTemLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1058
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_46

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "torch,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private updateFrontFlashUIState(I)V
    .registers 5

    .line 1041
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFrontFlashUIState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1042
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    .line 1043
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_3f

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "dual_front_flash_state_key"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3f
    return-void
.end method

.method private updateRotationIcon(I)V
    .registers 4

    .line 1049
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_1a

    int-to-float p1, p1

    .line 1050
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 1051
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 1052
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_1a
    return-void
.end method

.method private updateSpreadBarDelay()V
    .registers 5

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    .line 677
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    return-void
.end method

.method private updateStrengthModeState(I)V
    .registers 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_f5

    if-eq p1, v3, :cond_81

    if-eq p1, v2, :cond_c

    goto/16 :goto_168

    .line 420
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_front_dual_flash_medium_selected:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_front_dual_flash_high_selected:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v4, v4, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    if-ne p1, v3, :cond_33

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_4a

    :cond_33
    if-ne p1, v2, :cond_3f

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_4a

    :cond_3f
    if-ne p1, v0, :cond_4a

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 433
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->flash_setting_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_168

    .line 403
    :cond_81
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_front_dual_flash_medium_selected:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_front_dual_flash_high_unselected:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v4, v4, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    if-ne p1, v3, :cond_a8

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 408
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_bf

    :cond_a8
    if-ne p1, v2, :cond_b4

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_bf

    :cond_b4
    if-ne p1, v0, :cond_bf

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 414
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 416
    :cond_bf
    :goto_bf
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->flash_setting_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "50%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_168

    .line 386
    :cond_f5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_front_dual_flash_medium_unselected:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_front_dual_flash_high_unselected:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v4, v4, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    if-ne p1, v3, :cond_11c

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_133

    :cond_11c
    if-ne p1, v2, :cond_128

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 394
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_133

    :cond_128
    if-ne p1, v0, :cond_133

    .line 396
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 399
    :cond_133
    :goto_133
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->flash_setting_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "10%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 439
    :goto_168
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontDualFlashTemValue(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    return-void
.end method


# virtual methods
.method protected camFacingSupport()Z
    .registers 4

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLuminanceAdjustSupportForCamera:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_a

    goto :goto_16

    .line 779
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result v0

    .line 780
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLuminanceAdjustSupportForCamera:[I

    aget p0, p0, v0

    if-lez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    :goto_16
    return v1
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 175
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public doHideAnimation()V
    .registers 2

    .line 515
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doHideAnimation()V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_14
    return-void
.end method

.method protected doShowAnimation()V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    .line 524
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1c
    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideAdjustUI(Z)V
    .registers 4

    .line 745
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI(Z)V

    .line 746
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAdjustUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 748
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->setAllowedMove(Z)V

    .line 750
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz v0, :cond_19

    .line 751
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setAllowedMove(Z)V

    .line 753
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    .line 754
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 756
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_28

    .line 757
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideFrontDualFlashUI()V

    :cond_28
    if-eqz p1, :cond_37

    .line 760
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_front_dual_flash_ui_visible"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "front_dual_flash_ui_hide"

    .line 761
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->removeSpreadBarSwitchDelay()V

    return-void
.end method

.method public hideEntryView()V
    .registers 2

    .line 586
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideEntryView()V

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public initHandler()V
    .registers 3

    .line 181
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public initLuminanceSupport()V
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_6e

    .line 197
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    const-string v3, "torch"

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 201
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLuminanceAdjustSupportForCamera:[I

    const/4 v2, 0x2

    aput v2, v1, v4

    goto :goto_c

    .line 206
    :cond_44
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isLuminanceAdjustSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    .line 207
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    .line 208
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrontDualFlashSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFrontDualFlashSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mIsSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6e
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 127
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mThrLevelLuminanceSupported:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFoldType:I

    if-eqz v0, :cond_26

    .line 128
    sget v0, Lcom/transsion/camera/R$layout;->thr_level_luminance_adjust_view:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    sget p2, Lcom/transsion/camera/R$id;->thr_level_luminance_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mThrLevelLuminanceRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 130
    sget p2, Lcom/transsion/camera/R$id;->flash_color_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorLayout:Landroid/widget/RelativeLayout;

    goto/16 :goto_af

    .line 132
    :cond_26
    sget v0, Lcom/transsion/camera/R$layout;->front_dual_flash_adjust_view:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    sget p2, Lcom/transsion/camera/R$id;->flash_strength_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthLayout:Landroid/widget/RelativeLayout;

    .line 134
    sget p2, Lcom/transsion/camera/R$id;->front_dual_flash_adjust_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashAdjustLayout:Landroid/widget/RelativeLayout;

    .line 135
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashAdjustLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 137
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$bool;->front_dual_flash_support:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_af

    .line 139
    sget p2, Lcom/transsion/camera/R$id;->flash_color_layout_stub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_af

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_72

    .line 142
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 155
    :cond_72
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 156
    sget p2, Lcom/transsion/camera/R$id;->flash_color_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorLayout:Landroid/widget/RelativeLayout;

    .line 157
    sget p2, Lcom/transsion/camera/R$id;->flash_cold_color_temp_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    .line 158
    sget p2, Lcom/transsion/camera/R$id;->flash_default_color_temp_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    .line 159
    sget p2, Lcom/transsion/camera/R$id;->flash_warm_color_temp_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    .line 160
    sget p2, Lcom/transsion/camera/R$id;->flash_color_temp_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    .line 161
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI-IA;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->addColorTempChangeListener(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;)V

    .line 165
    :cond_af
    :goto_af
    sget p2, Lcom/transsion/camera/R$id;->low_rotation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 166
    sget p2, Lcom/transsion/camera/R$id;->medium_rotation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 167
    sget p2, Lcom/transsion/camera/R$id;->high_rotation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 168
    sget p2, Lcom/transsion/camera/R$id;->flash_strength_mode_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    .line 169
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$StrengthModeChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$StrengthModeChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI-IA;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->addStrengthModeChangeListener(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;)V

    return-object p1
.end method

.method public loadAnimation(Landroid/content/Context;)V
    .registers 3

    .line 530
    sget v0, Lcom/transsion/camera/R$anim;->front_dual_flash_adjust_bar_show:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    .line 531
    sget v0, Lcom/transsion/camera/R$anim;->front_dual_flash_adjust_bar_hide:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

    .line 532
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$2;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public loadViewMarginParam()V
    .registers 3

    const/4 v0, 0x0

    .line 684
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginLeft:I

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->flash_new_luminance_adjust_view_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginTop:I

    :cond_1e
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 839
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_174

    const/4 v0, 0x3

    if-eq p1, v0, :cond_162

    const/16 v0, 0x14

    if-eq p1, v0, :cond_151

    const/16 v0, 0x15

    if-eq p1, v0, :cond_133

    const/16 v0, 0x17

    if-eq p1, v0, :cond_121

    const/16 v0, 0x18

    if-eq p1, v0, :cond_112

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_10f

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_fc

    const/16 v0, 0x24

    if-eq p1, v0, :cond_f8

    const/16 v0, 0x25

    if-eq p1, v0, :cond_d9

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_f8

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_d9

    const/16 v0, 0x66

    if-eq p1, v0, :cond_d3

    const/16 v0, 0x67

    if-eq p1, v0, :cond_cd

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_bc

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_f8

    sparse-switch p1, :sswitch_data_19a

    packed-switch p1, :pswitch_data_22c

    goto/16 :goto_199

    .line 1015
    :sswitch_4b
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mInIntentVideoReview:Z

    return-void

    .line 941
    :sswitch_4e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    .line 942
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    return-void

    .line 948
    :sswitch_55
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsDocumentEnter:Z

    return-void

    .line 945
    :sswitch_58
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsDocumentEnter:Z

    return-void

    .line 971
    :pswitch_5b
    :sswitch_5b
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFilterUIShown:Z

    .line 972
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideColorLayoutIfNeed()V

    return-void

    .line 980
    :sswitch_61
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_199

    .line 981
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI(Z)V

    .line 982
    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    return-void

    .line 990
    :sswitch_6d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideFlashColorUI()V

    return-void

    .line 1018
    :sswitch_71
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mInIntentVideoReview:Z

    return-void

    .line 986
    :sswitch_74
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 987
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI(Z)V

    return-void

    .line 998
    :sswitch_7b
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInSettingFragment:Z

    .line 1000
    :sswitch_7d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->exitSettingFragment()V

    return-void

    .line 993
    :sswitch_81
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInSettingFragment:Z

    .line 995
    :sswitch_83
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->enterSettingFragment()V

    return-void

    .line 882
    :sswitch_87
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Preview started."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 883
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    .line 884
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_b2

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->camFacingSupport()Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInSettingFragment:Z

    if-nez p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInWaterMarkFragment:Z

    if-nez p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mInIntentVideoReview:Z

    if-nez p1, :cond_b2

    .line 886
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_199

    const/16 p1, 0xb

    .line 887
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 890
    :cond_b2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_199

    const/16 p1, 0xa

    .line 891
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 896
    :cond_bc
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "All ui manager loaded."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 898
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-ne p1, v1, :cond_199

    .line 899
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    return-void

    .line 1011
    :cond_cd
    :sswitch_cd
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInWaterMarkFragment:Z

    .line 1012
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->exitSettingFragment()V

    return-void

    .line 1005
    :cond_d3
    :sswitch_d3
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInWaterMarkFragment:Z

    .line 1006
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->enterSettingFragment()V

    return-void

    .line 911
    :cond_d9
    :pswitch_d9
    :sswitch_d9
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSceneSupport:Z

    if-nez p1, :cond_199

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    if-nez p1, :cond_199

    .line 912
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 913
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f5

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isLuminanceAdjustSupported()Z

    move-result p1

    if-eqz p1, :cond_f5

    .line 914
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    .line 916
    :cond_f5
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSceneSupport:Z

    return-void

    .line 872
    :cond_f8
    :pswitch_f8
    :sswitch_f8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->triggerAdjustUIHide()V

    return-void

    .line 876
    :cond_fc
    :sswitch_fc
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_199

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->camFacingSupport()Z

    move-result p1

    if-eqz p1, :cond_199

    .line 877
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 878
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    return-void

    .line 977
    :cond_10f
    :pswitch_10f
    :sswitch_10f
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFilterUIShown:Z

    return-void

    .line 852
    :cond_112
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    if-eqz p1, :cond_119

    .line 853
    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->setAllowedMove(Z)V

    .line 855
    :cond_119
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz p0, :cond_199

    .line 856
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setAllowedMove(Z)V

    return-void

    .line 842
    :cond_121
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    if-eqz p1, :cond_128

    .line 843
    invoke-virtual {p1, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->setAllowedMove(Z)V

    .line 845
    :cond_128
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz p1, :cond_12f

    .line 846
    invoke-virtual {p1, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setAllowedMove(Z)V

    .line 849
    :cond_12f
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    return-void

    .line 921
    :cond_133
    :sswitch_133
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_199

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->camFacingSupport()Z

    move-result p1

    if-nez p1, :cond_140

    goto :goto_199

    .line 925
    :cond_140
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isFlashModeOff()Z

    move-result p1

    if-nez p1, :cond_199

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-ne p1, v1, :cond_199

    .line 926
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 927
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    return-void

    .line 931
    :cond_151
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz p1, :cond_158

    .line 932
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->resetValue()V

    .line 934
    :cond_158
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    if-eqz p1, :cond_15f

    .line 935
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->resetValue()V

    .line 937
    :cond_15f
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mIsInSettingFragment:Z

    return-void

    .line 962
    :cond_162
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Mode switch end in luminance ui"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 964
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_170

    .line 965
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 967
    :cond_170
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateSettingUILayout(Z)V

    return-void

    .line 952
    :cond_174
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Mode switch begin in luminance ui"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI(Z)V

    .line 954
    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    .line 956
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_199

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_199

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_199

    .line 957
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    :cond_199
    :goto_199
    return-void

    :sswitch_data_19a
    .sparse-switch
        0x8 -> :sswitch_87
        0xb -> :sswitch_f8
        0xc -> :sswitch_d9
        0xd -> :sswitch_f8
        0xe -> :sswitch_d9
        0xf -> :sswitch_f8
        0x10 -> :sswitch_d9
        0x11 -> :sswitch_81
        0x12 -> :sswitch_7b
        0x4d -> :sswitch_74
        0x86 -> :sswitch_71
        0x92 -> :sswitch_6d
        0xa3 -> :sswitch_83
        0xa4 -> :sswitch_7d
        0xa9 -> :sswitch_f8
        0xb0 -> :sswitch_d3
        0xb1 -> :sswitch_cd
        0xcf -> :sswitch_61
        0xd1 -> :sswitch_fc
        0xe9 -> :sswitch_133
        0xf2 -> :sswitch_5b
        0xf3 -> :sswitch_10f
        0xf4 -> :sswitch_d3
        0xf5 -> :sswitch_cd
        0x101 -> :sswitch_f8
        0x102 -> :sswitch_d9
        0x10d -> :sswitch_f8
        0x10e -> :sswitch_d9
        0x10f -> :sswitch_58
        0x110 -> :sswitch_55
        0x12b -> :sswitch_4e
        0x137 -> :sswitch_f8
        0x147 -> :sswitch_f8
        0x148 -> :sswitch_4b
        0x18b -> :sswitch_f8
        0x18c -> :sswitch_d9
    .end sparse-switch

    :pswitch_data_22c
    .packed-switch 0x2e
        :pswitch_f8
        :pswitch_d9
        :pswitch_5b
        :pswitch_10f
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .line 574
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 575
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    if-nez p0, :cond_12

    const/16 p0, 0x8

    .line 576
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    return v1

    .line 580
    :cond_13
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onLongPress(FF)Z
    .registers 5

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 485
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 487
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 492
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    .line 494
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 498
    :cond_1c
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_28

    const/4 v0, 0x4

    if-eq p1, v0, :cond_28

    const/4 p1, 0x0

    .line 500
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateSettingUILayout(Z)V

    :cond_28
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 506
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 507
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideColorLayoutIfNeed()V

    .line 508
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz p1, :cond_13

    .line 509
    iget p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStrengthModeProgressBarWidth:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStrengthModeProgressBarHeight:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setStrengthMode(III)V

    :cond_13
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public processAnimationComplete()V
    .registers 2

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_9

    const/16 v0, 0x9

    .line 568
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 601
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 602
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_2c

    .line 605
    const-string v0, "-1"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dual_front_flash_state_key"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    :cond_2c
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

    .line 235
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 237
    const-string v0, "key_video_portrait"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_definition"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_360_video_hdr"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_anti_video"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_iso"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_exposure_time"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 5

    .line 611
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setupEntryView()V

    .line 612
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isTorchMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->camFacingSupport()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 613
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-eqz v0, :cond_2b

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    .line 616
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 615
    const-string v3, "dual_front_flash_state_key"

    invoke-virtual {v0, v3, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2b
    return-void
.end method

.method public showAdjustUI()V
    .registers 8

    .line 698
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    .line 699
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsZoomScaling:Z

    if-nez v0, :cond_95

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsZoomWheelShowing:Z

    if-eqz v0, :cond_d

    goto/16 :goto_95

    .line 702
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getFrontDualFlashValue()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 704
    sget-object p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "The flash value is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1b
    const/4 v1, 0x0

    .line 707
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 708
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 709
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v4, :cond_30

    .line 710
    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideTwinkleGuide()V

    .line 712
    :cond_30
    sget-object v4, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAdjustUI colorTemp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", strengthMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 713
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    if-eqz v4, :cond_5a

    .line 714
    invoke-virtual {v4, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 715
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 717
    :cond_5a
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->refreshUIState(I)V

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_64

    .line 719
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 721
    :cond_64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    if-eqz v0, :cond_6b

    .line 722
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->setAllowedMove(Z)V

    .line 724
    :cond_6b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz v0, :cond_72

    .line 725
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setAllowedMove(Z)V

    .line 727
    :cond_72
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_79

    .line 728
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showFrontDualFlashUI()V

    .line 730
    :cond_79
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_front_dual_flash_ui_visible"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "front_dual_flash_ui_show"

    .line 732
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setAdjustUIOrientation(I)V

    .line 734
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateSpreadBarDelay()V

    .line 735
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->doShowAnimation()V

    .line 736
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideColorLayoutIfNeed()V

    :cond_95
    :goto_95
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 247
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->unInit()V

    .line 248
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_portrait"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_360_video_hdr"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_iso"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_time"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 11

    .line 1064
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mThrLevelLuminanceRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p1, :cond_5

    return-void

    .line 1067
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 1068
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1069
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-nez v1, :cond_9d

    iget v8, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFoldType:I

    if-eqz v8, :cond_9d

    if-eq v8, v7, :cond_73

    if-ne v8, v6, :cond_24

    goto :goto_73

    .line 1076
    :cond_24
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1077
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1078
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1079
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_67

    .line 1081
    :cond_49
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_normal:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1082
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_normal:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1083
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_normal:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1085
    :goto_67
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_normal:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_21b

    .line 1071
    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_normal_fold:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1072
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_normal_fold:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1073
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_normal_fold:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1074
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_normal_fold:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_21b

    :cond_9d
    if-ne v1, v6, :cond_151

    .line 1088
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    if-eq v1, v5, :cond_127

    const/16 v8, 0xb4

    if-eq v1, v8, :cond_fd

    if-eq v1, v4, :cond_d3

    .line 1109
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1110
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1111
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1112
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_21b

    .line 1102
    :cond_d3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1103
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1104
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_expand_270:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1105
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_expand_270:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_21b

    .line 1096
    :cond_fd
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1097
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1098
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_expand_180:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1099
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_expand_180:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_21b

    .line 1090
    :cond_127
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1091
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1092
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_expand_90:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1093
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_expand_90:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_21b

    :cond_151
    if-ne v1, v7, :cond_19d

    .line 1116
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_normal:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1117
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1118
    const-string v1, "on"

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_187

    .line 1119
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1120
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_hover_priview_down:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_21b

    .line 1122
    :cond_187
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1123
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_21b

    :cond_19d
    if-ne v1, v3, :cond_1c8

    .line 1126
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1127
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1128
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_hover_right:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1129
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_hover_right:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_21b

    :cond_1c8
    if-ne v1, v2, :cond_1f3

    .line 1131
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1132
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_hover:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1133
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_hover_left:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1134
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_hover_left:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_21b

    .line 1136
    :cond_1f3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_width_column:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1137
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_height_column:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1138
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_left_margin_column:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1139
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->flash_luminance_adjust_view_top_margin_column:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1142
    :goto_21b
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v1, v6, :cond_225

    .line 1143
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    add-int/2addr v1, v5

    rem-int/lit16 v1, v1, 0x168

    goto :goto_23e

    :cond_225
    if-eqz v1, :cond_237

    if-eq v1, v7, :cond_237

    const/4 v6, 0x2

    if-ne v1, v6, :cond_22d

    goto :goto_237

    :cond_22d
    if-eq v1, v3, :cond_234

    if-ne v1, v2, :cond_232

    goto :goto_234

    :cond_232
    :goto_232
    move v1, v0

    goto :goto_23e

    .line 1154
    :cond_234
    :goto_234
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    goto :goto_23e

    .line 1147
    :cond_237
    :goto_237
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    if-eq v1, v5, :cond_232

    if-ne v1, v4, :cond_23e

    goto :goto_232

    .line 1156
    :cond_23e
    :goto_23e
    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStrengthModeProgressBarWidth:I

    .line 1157
    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStrengthModeProgressBarHeight:I

    .line 1158
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateRotationIcon(I)V

    .line 1159
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mThrLevelLuminanceRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1160
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mThrLevelLuminanceRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
