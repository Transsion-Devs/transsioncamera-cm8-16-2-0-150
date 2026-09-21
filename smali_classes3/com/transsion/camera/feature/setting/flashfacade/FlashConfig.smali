.class public final Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;


# instance fields
.field public mAutoBackLimitBV:I

.field public mAutoBackTeleLimitBV:I

.field public mAutoBackWideLimitBV:I

.field public mAutoFrontLimitBV:I

.field public mAutoSupportedFeatures:[Ljava/lang/String;

.field public mBackCamThrLevelSupport:Z

.field public mBackTeleUnSupportSFL:Z

.field public mBackWideUnSupportSFL:Z

.field public mDefaultFrontDualFlashColorTemp:I

.field public mDefaultLuminanceValue:I

.field public mDefaultPhotoFrontDualFlashStrengthMode:I

.field public mDefaultVideoFrontDualFlashStrengthMode:I

.field public mFacingBackSupportedSFL:Z

.field public mFacingFrontSupportedSFL:Z

.field public mFlashDefaultValue:Ljava/lang/String;

.field public mFlashFacadeAutoSupportLedFlashInVideoMode:Z

.field public mFlashFacadeMovieFrontNoFlash:Z

.field public mFlashStyleOneStage:Z

.field public mForceRemoveVideoBackAuto:Z

.field public mFrontDualFlashSupport:Z

.field public mLedFlashLowLight:Z

.field public mLimitBV:I

.field public mLimitDebugBV:I

.field public mLowLightAutoSupportedFeatures:[Ljava/lang/String;

.field public mLuminanceAdjustSupportForCamera:[I

.field public mOffSupportedFeatures:[Ljava/lang/String;

.field public mOnSupportedFeatures:[Ljava/lang/String;

.field public mRearCameraSuperFlashSupport:Z

.field public mResetBrightnessMonitorWhenDisplayChange:Z

.field public mRingScreenLightSupport:Z

.field public mRingScreenLightSupportedFeatures:[Ljava/lang/String;

.field public mScreenFlashSupport:Z

.field public mScreenFlashSupportedFeatures:[Ljava/lang/String;

.field public mTorchSupportedFeatures:[Ljava/lang/String;

.field public mUnSupportOneStageModes:[Ljava/lang/String;

.field public mUseNewLuminanceInteraction:Z

.field public mUsePlatformScreenFlash:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()V
    .registers 1

    .line 78
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->sInstance:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    if-nez v0, :cond_b

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->sInstance:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    :cond_b
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;
    .registers 1

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->sInstance:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    return-object v0
.end method
