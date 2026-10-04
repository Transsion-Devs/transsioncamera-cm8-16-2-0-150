.class public Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAINRZoomRangeList:[I

.field private mAiRawRemosaicLimitISO:I

.field private mAiRawSprdSupport:Z

.field private mAiRawZoomRangeList:[I

.field private mAiSuperDefinitionAlgoSupport:Z

.field private mAiSuperResolutionSupport:Z

.field private mAirawMfnrReplaceRemosaic:Z

.field private mAirawNightQuadSupportSR:Z

.field private mAsdDefaultValue:Ljava/lang/String;

.field private mAsdEnhanceLightSupport:Z

.field private mDXOTestSupport:Z

.field private mFilterSupportAsd:Z

.field private mFilterSupportMfnr:Z

.field private mForceSuperResolution:Z

.field private mFrontLimitBV:I

.field private mFrontLimitISO:I

.field private mFullSizeSupport:Z

.field private mHdrAsdBothSupport:Z

.field private mHdrMaxZoomRatio:I

.field private mHighDefinitionModeSupport:Z

.field private mIsHdrLimitedByMemory:Z

.field private mLimitBV:I

.field private mLimitISO:I

.field private mLimitUseISO:Z

.field private mLivePhotoAlgorithmType:I

.field private mLongFocusLimitBV:I

.field private mLongFocusLimitISO:I

.field private mMagicSkyMultiFrameSupport:Z

.field private mPlatformMfnrSupport:Z

.field private mPmasterModeISOSupport:Z

.field private mPmasterModeISOSupportType:I

.field private mPmasterSupportSuperAirawSR:Z

.field private mQcomAirawSN2SRSupport:Z

.field private mQcomCaptureFlowSupport:Z

.field private mSTBlurModeHDRSupport:Z

.field private mSecondItemZoomValue:I

.field private mSuperAiRawShot2ShotSkipToMFLL:Z

.field private mSuperAiRawSupport:Z

.field private mSuperDefinitionEscapeNight:Z

.field private mSuperNightAsdSupport:Z

.field private mSuperNightLiteSupportBackWideCamera:Z

.field private mSuperNightLiteSupportFrontCamera:Z

.field private mSuperResolutionDebug:I

.field private mSuperResolutionHDRLimitZoom:I

.field private mTFAiShutterLimitISO:I

.field private mTFShot2ShotSkipToMFLL:Z

.field private mTranssionAINRLimitBV:I

.field private mTranssionAINRLimitISO:I

.field private mTranssionAINRMaxBV:I

.field private mTranssionAINRMaxISO:I

.field private mTranssionAINRSupport:Z

.field private mTranssionFilterSupport:Z

.field private mTurboFusionSupport:Z

.field private mWideLimitBV:I

.field private mWideLimitISO:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GlobalFeatures"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "auto"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAsdDefaultValue:Ljava/lang/String;

    const/16 v0, 0xcd

    .line 21
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionHDRLimitZoom:I

    const/16 v1, -0x14

    .line 23
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitBV:I

    .line 24
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFrontLimitBV:I

    .line 25
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mWideLimitBV:I

    .line 26
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLongFocusLimitBV:I

    const/16 v1, 0xc80

    .line 31
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitISO:I

    .line 32
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFrontLimitISO:I

    .line 33
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mWideLimitISO:I

    .line 34
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLongFocusLimitISO:I

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitUseISO:Z

    .line 38
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRSupport:Z

    .line 39
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRLimitISO:I

    .line 40
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRMaxISO:I

    .line 41
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRLimitBV:I

    .line 42
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRMaxBV:I

    .line 48
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightLiteSupportFrontCamera:Z

    .line 49
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightLiteSupportBackWideCamera:Z

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHighDefinitionModeSupport:Z

    .line 51
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFullSizeSupport:Z

    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPlatformMfnrSupport:Z

    .line 53
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAsdEnhanceLightSupport:Z

    .line 54
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionFilterSupport:Z

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiSuperResolutionSupport:Z

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiSuperDefinitionAlgoSupport:Z

    .line 59
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTurboFusionSupport:Z

    .line 60
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperAiRawSupport:Z

    .line 61
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mQcomCaptureFlowSupport:Z

    .line 62
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTFShot2ShotSkipToMFLL:Z

    .line 63
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperAiRawShot2ShotSkipToMFLL:Z

    .line 65
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHdrAsdBothSupport:Z

    .line 66
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFilterSupportMfnr:Z

    .line 67
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFilterSupportAsd:Z

    .line 68
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightAsdSupport:Z

    .line 70
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSTBlurModeHDRSupport:Z

    .line 71
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterModeISOSupport:Z

    .line 72
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawSprdSupport:Z

    .line 73
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mDXOTestSupport:Z

    .line 74
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperDefinitionEscapeNight:Z

    .line 75
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mMagicSkyMultiFrameSupport:Z

    .line 76
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAirawMfnrReplaceRemosaic:Z

    .line 77
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAirawNightQuadSupportSR:Z

    .line 78
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterSupportSuperAirawSR:Z

    const/4 v2, -0x1

    .line 79
    iput v2, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSecondItemZoomValue:I

    .line 80
    iput v2, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionDebug:I

    .line 81
    iput v2, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLivePhotoAlgorithmType:I

    .line 82
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHdrMaxZoomRatio:I

    const/4 v0, 0x2

    .line 83
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterModeISOSupportType:I

    .line 84
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mForceSuperResolution:Z

    .line 85
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mIsHdrLimitedByMemory:Z

    .line 86
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mQcomAirawSN2SRSupport:Z

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    const/4 v0, -0x1

    .line 93
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getSuperResolutionDebug(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionDebug:I

    .line 94
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASD init, mSuperResolutionDebug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionDebug:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdDefaultValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAsdDefaultValue:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperResolutionHDRLimitZoom:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionHDRLimitZoom:I

    .line 98
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitBV:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitBV:I

    .line 99
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFrontLimitBV:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFrontLimitBV:I

    .line 100
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideLimitBV:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mWideLimitBV:I

    .line 101
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLongFocusLimitBV:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLongFocusLimitBV:I

    .line 103
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTFAishutterLimitISO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTFAiShutterLimitISO:I

    .line 104
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawRemosaicLimitISO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawRemosaicLimitISO:I

    .line 106
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitUseISO:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitUseISO:Z

    .line 107
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitISO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitISO:I

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFrontLimitISO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFrontLimitISO:I

    .line 109
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideLimitISO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mWideLimitISO:I

    .line 110
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLongFocusLimitISO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLongFocusLimitISO:I

    .line 112
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRSupport:Z

    .line 113
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRLimitISO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRLimitISO:I

    .line 114
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRMaxISO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRMaxISO:I

    .line 115
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRLimitBV:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRLimitBV:I

    .line 116
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRMaxBV:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRMaxBV:I

    .line 118
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRangeList:[I

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawZoomRangeList:[I

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAINRZoomRange:[I

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAINRZoomRangeList:[I

    .line 121
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->misFrontSupportNightLite:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightLiteSupportFrontCamera:Z

    .line 122
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightLiteSupportBackWideCamera:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightLiteSupportBackWideCamera:Z

    .line 123
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mHighDefinitionModeSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHighDefinitionModeSupport:Z

    .line 124
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFullSizeSupport:Z

    .line 125
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformMfnrSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPlatformMfnrSupport:Z

    .line 126
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAISuperResolutionSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiSuperResolutionSupport:Z

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAISuperDefinitionAlgoSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiSuperDefinitionAlgoSupport:Z

    .line 128
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdEnhanceLight:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAsdEnhanceLightSupport:Z

    .line 129
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionFilterSupport:Z

    .line 131
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTurboFusionSupport:Z

    .line 132
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperAiRawSupport:Z

    .line 133
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mQcomCaptureFlowSupport:Z

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotTFToMFLL:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTFShot2ShotSkipToMFLL:Z

    .line 135
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotAiRawToMFLL:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperAiRawShot2ShotSkipToMFLL:Z

    .line 137
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHdrAsdBothSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHdrAsdBothSupport:Z

    .line 138
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFilterSupportMfnr:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFilterSupportMfnr:Z

    .line 139
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFilterSupportAsd:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFilterSupportAsd:Z

    .line 140
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->superNightSupportAsd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightAsdSupport:Z

    .line 142
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeHDRSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSTBlurModeHDRSupport:Z

    .line 143
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPmasterModeISOSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterModeISOSupport:Z

    .line 144
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSecondItemZoomValue:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSecondItemZoomValue:I

    .line 145
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mHdrMaxZoomRatio:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHdrMaxZoomRatio:I

    .line 146
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawSprdSupport:Z

    .line 147
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getLivePhotoAlgorithmType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLivePhotoAlgorithmType:I

    .line 148
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mDXOTestSupport:Z

    .line 149
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinitionEscapeNight:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperDefinitionEscapeNight:Z

    .line 150
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportMagicSkyMultiFrame()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mMagicSkyMultiFrameSupport:Z

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAirawMfnrReplaceRemosaic:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAirawMfnrReplaceRemosaic:Z

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAirawNightQuadSupportSR:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAirawNightQuadSupportSR:Z

    .line 153
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPmasterModeISOSupportType:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterModeISOSupportType:I

    .line 154
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPmasterSupportSuperAirawSR:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterSupportSuperAirawSR:Z

    .line 155
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mForceSuperResolution:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mForceSuperResolution:Z

    .line 156
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHdrLimitedByMemory:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mIsHdrLimitedByMemory:Z

    .line 157
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mQcomAirawSN2SRSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mQcomAirawSN2SRSupport:Z

    return-void
.end method


# virtual methods
.method public getAINRZoomRangeList()[I
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAINRZoomRangeList:[I

    return-object p0
.end method

.method public getAiRawRemosaicLimitISO()I
    .registers 1

    .line 209
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawRemosaicLimitISO:I

    return p0
.end method

.method public getAsdDefaultValue()Ljava/lang/String;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAsdDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getFrontLimitBV()I
    .registers 1

    .line 193
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFrontLimitBV:I

    return p0
.end method

.method public getFrontLimitISO()I
    .registers 1

    .line 217
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFrontLimitISO:I

    return p0
.end method

.method public getHdrMaxZoomRatio()I
    .registers 1

    .line 189
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHdrMaxZoomRatio:I

    return p0
.end method

.method public getLimitBV()I
    .registers 1

    .line 185
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitBV:I

    return p0
.end method

.method public getLimitBVValue(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;I)I
    .registers 6

    .line 377
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionDebug:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 380
    :cond_6
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 381
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_5b

    .line 383
    :cond_23
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz p1, :cond_42

    .line 384
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_56

    .line 386
    :cond_42
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 387
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getFrontLimitBV()I

    move-result p0

    return p0

    .line 389
    :cond_51
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLimitBV()I

    move-result p0

    return p0

    .line 385
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLongFocusLimitBV()I

    move-result p0

    return p0

    .line 382
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getWideLimitBV()I

    move-result p0

    return p0
.end method

.method public getLimitISO()I
    .registers 1

    .line 213
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitISO:I

    return p0
.end method

.method public getLimitISOValue(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;I)I
    .registers 6

    .line 394
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionDebug:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 397
    :cond_6
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 398
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_5b

    .line 400
    :cond_23
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz p1, :cond_42

    .line 401
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_56

    .line 403
    :cond_42
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getFrontLimitISO()I

    move-result p0

    return p0

    .line 406
    :cond_51
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLimitISO()I

    move-result p0

    return p0

    .line 402
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getLongFocusLimitISO()I

    move-result p0

    return p0

    .line 399
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->getWideLimitISO()I

    move-result p0

    return p0
.end method

.method public getLivePhotoAlgorithmType()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLivePhotoAlgorithmType:I

    return p0
.end method

.method public getLongFocusLimitBV()I
    .registers 1

    .line 201
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLongFocusLimitBV:I

    return p0
.end method

.method public getLongFocusLimitISO()I
    .registers 1

    .line 225
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLongFocusLimitISO:I

    return p0
.end method

.method public getPmasterModeISOSupportType()I
    .registers 1

    .line 161
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterModeISOSupportType:I

    return p0
.end method

.method public getSecondItemZoomValue()I
    .registers 1

    .line 253
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSecondItemZoomValue:I

    return p0
.end method

.method public getSuperResolutionHDRLimitZoom()I
    .registers 1

    .line 173
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionHDRLimitZoom:I

    return p0
.end method

.method public getTFAiShutterLimitISO()I
    .registers 1

    .line 205
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTFAiShutterLimitISO:I

    return p0
.end method

.method public getTranssionAINRLimitBV()I
    .registers 1

    .line 245
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRLimitBV:I

    return p0
.end method

.method public getTranssionAINRLimitISO()I
    .registers 1

    .line 237
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRLimitISO:I

    return p0
.end method

.method public getTranssionAINRMaxBV()I
    .registers 1

    .line 249
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRMaxBV:I

    return p0
.end method

.method public getTranssionAINRMaxISO()I
    .registers 1

    .line 241
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRMaxISO:I

    return p0
.end method

.method public getWideLimitBV()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mWideLimitBV:I

    return p0
.end method

.method public getWideLimitISO()I
    .registers 1

    .line 221
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mWideLimitISO:I

    return p0
.end method

.method public getZoomRangeList()[I
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawZoomRangeList:[I

    return-object p0
.end method

.method public isAiRawMfnrReplaceRemosaic()Z
    .registers 1

    .line 353
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAirawMfnrReplaceRemosaic:Z

    return p0
.end method

.method public isAiRawSprdSupport()Z
    .registers 1

    .line 337
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawSprdSupport:Z

    return p0
.end method

.method public isAiSuperDefinitionAlgoSupport()Z
    .registers 1

    .line 281
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiSuperDefinitionAlgoSupport:Z

    return p0
.end method

.method public isAiSuperResolutionSupport()Z
    .registers 1

    .line 277
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiSuperResolutionSupport:Z

    return p0
.end method

.method public isAirawNightQuadSupportSR()Z
    .registers 1

    .line 357
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAirawNightQuadSupportSR:Z

    return p0
.end method

.method public isAsdEnhanceLightSupport()Z
    .registers 1

    .line 285
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAsdEnhanceLightSupport:Z

    return p0
.end method

.method public isDXOTestSupport()Z
    .registers 1

    .line 341
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mDXOTestSupport:Z

    return p0
.end method

.method public isFilterSupportAsd()Z
    .registers 1

    .line 321
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFilterSupportAsd:Z

    return p0
.end method

.method public isFilterSupportMfnr()Z
    .registers 1

    .line 317
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFilterSupportMfnr:Z

    return p0
.end method

.method public isForceSuperResolutionOn()Z
    .registers 1

    .line 365
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mForceSuperResolution:Z

    return p0
.end method

.method public isFullSizeSupport()Z
    .registers 1

    .line 269
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFullSizeSupport:Z

    return p0
.end method

.method public isHdrAsdBothSupport()Z
    .registers 1

    .line 313
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHdrAsdBothSupport:Z

    return p0
.end method

.method public isHdrLimitedByMemory()Z
    .registers 1

    .line 369
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mIsHdrLimitedByMemory:Z

    return p0
.end method

.method public isHighDefinitionModeSupport()Z
    .registers 1

    .line 265
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHighDefinitionModeSupport:Z

    return p0
.end method

.method public isLimitUseISO()Z
    .registers 1

    .line 229
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitUseISO:Z

    return p0
.end method

.method public isMagicSkyMultiFrameSupport()Z
    .registers 1

    .line 349
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mMagicSkyMultiFrameSupport:Z

    return p0
.end method

.method public isPlatformMfnrSupport()Z
    .registers 1

    .line 273
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPlatformMfnrSupport:Z

    return p0
.end method

.method public isPmasterModeISOSupport()Z
    .registers 1

    .line 333
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterModeISOSupport:Z

    return p0
.end method

.method public isPmasterSupportSuperAirawSR()Z
    .registers 1

    .line 361
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterSupportSuperAirawSR:Z

    return p0
.end method

.method public isQcomAirawSN2SRSupport()Z
    .registers 1

    .line 373
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mQcomAirawSN2SRSupport:Z

    return p0
.end method

.method public isQcomCaptureFlowSupport()Z
    .registers 1

    .line 301
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mQcomCaptureFlowSupport:Z

    return p0
.end method

.method public isSTBlurModeHDRSupport()Z
    .registers 1

    .line 329
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSTBlurModeHDRSupport:Z

    return p0
.end method

.method public isSuperAiRawShot2ShotSkipToMFLL()Z
    .registers 1

    .line 309
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperAiRawShot2ShotSkipToMFLL:Z

    return p0
.end method

.method public isSuperAiRawSupport()Z
    .registers 1

    .line 297
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperAiRawSupport:Z

    return p0
.end method

.method public isSuperDefinitionEscapeNight()Z
    .registers 1

    .line 345
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperDefinitionEscapeNight:Z

    return p0
.end method

.method public isSuperNightAsdSupport()Z
    .registers 1

    .line 325
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightAsdSupport:Z

    return p0
.end method

.method public isSuperNightLiteSupportBackWideCamera()Z
    .registers 1

    .line 257
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightLiteSupportBackWideCamera:Z

    return p0
.end method

.method public isSuperNightLiteSupportFrontCamera()Z
    .registers 1

    .line 261
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightLiteSupportFrontCamera:Z

    return p0
.end method

.method public isTFShot2ShotSkipToMFLL()Z
    .registers 1

    .line 305
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTFShot2ShotSkipToMFLL:Z

    return p0
.end method

.method public isTranssionAINRSupport()Z
    .registers 1

    .line 233
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRSupport:Z

    return p0
.end method

.method public isTranssionFilterSupport()Z
    .registers 1

    .line 289
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionFilterSupport:Z

    return p0
.end method

.method public isTurboFusionSupport()Z
    .registers 1

    .line 293
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTurboFusionSupport:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalFeatures{mAsdDefaultValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAsdDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperResolutionHDRLimitZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperResolutionHDRLimitZoom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLimitBV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitBV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrontLimitBV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFrontLimitBV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWideLimitBV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mWideLimitBV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLongFocusLimitBV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLongFocusLimitBV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTFAiShutterLimitISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTFAiShutterLimitISO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAiRawRemosaicLimitISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawRemosaicLimitISO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLimitISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitISO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrontLimitISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFrontLimitISO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWideLimitISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mWideLimitISO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLongFocusLimitISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLongFocusLimitISO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLimitUseISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mLimitUseISO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTranssionAINRSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTranssionAINRLimitISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRLimitISO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTranssionAINRMaxISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRMaxISO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTranssionAINRLimitBV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRLimitBV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTranssionAINRMaxBV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionAINRMaxBV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAiRawZoomRangeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawZoomRangeList:[I

    .line 431
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAINRZoomRangeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAINRZoomRangeList:[I

    .line 432
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperNightLiteSupportFrontCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightLiteSupportFrontCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperNightLiteSupportBackWideCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightLiteSupportBackWideCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHighDefinitionModeSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHighDefinitionModeSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFullSizeSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFullSizeSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPlatformMfnrSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPlatformMfnrSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAsdEnhanceLightSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAsdEnhanceLightSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTranssionFilterSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTranssionFilterSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAiSuperResolutionSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiSuperResolutionSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAiSuperDefinitionAlgoSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiSuperDefinitionAlgoSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTurboFusionSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTurboFusionSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperAiRawSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperAiRawSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mQcomCaptureFlowSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mQcomCaptureFlowSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTFShot2ShotSkipToMFLL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mTFShot2ShotSkipToMFLL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperAiRawShot2ShotSkipToMFLL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperAiRawShot2ShotSkipToMFLL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHdrAsdBothSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mHdrAsdBothSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFilterSupportMfnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFilterSupportMfnr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFilterSupportAsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mFilterSupportAsd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperNightAsdSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperNightAsdSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSTBlurModeHDRSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSTBlurModeHDRSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPmasterModeISOSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterModeISOSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondItemZoomValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSecondItemZoomValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAiRawSprdSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAiRawSprdSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDXOTestSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mDXOTestSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperDefinitionEscapeNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mSuperDefinitionEscapeNight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMagicSkyMultiFrameSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mMagicSkyMultiFrameSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAirawMfnrReplaceRemosaic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAirawMfnrReplaceRemosaic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAirawNightQuadSupportSR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mAirawNightQuadSupportSR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPmasterSupportSuperAirawSR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mPmasterSupportSuperAirawSR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mForceSuperResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mForceSuperResolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsHdrLimitedByMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mIsHdrLimitedByMemory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mQcomAirawSN2SRSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->mQcomAirawSN2SRSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
