.class public Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;,
        Lcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mOobeCountry:Ljava/lang/String; = null

.field private static sFrontWideCameraId:Ljava/lang/String; = "5"

.field private static sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils; = null

.field private static sWideCameraId:Ljava/lang/String; = "3"


# instance fields
.field private final MAX_QUEUE_SIZE:I

.field private final faceInfoBound:Landroid/os/Bundle;

.field private final faceInfos:Ljava/util/LinkedList;

.field private mAIArtValue:Ljava/lang/String;

.field private mAIGCEffectValue:Ljava/lang/String;

.field private mAIShutterValue:I

.field private mAR2Name:Ljava/lang/String;

.field private mAR2NetType:Ljava/lang/String;

.field private mAR2Size:I

.field private mAR2Sort:Ljava/lang/String;

.field private mAR2Type:Ljava/lang/String;

.field private mAR2VideoDuration:I

.field private mActivityOrientation:I

.field private mAgeValue:Ljava/lang/String;

.field private mAntiVideoValue:Ljava/lang/String;

.field private mArcoreAudioId:I

.field private mAsdEffect:I

.field private mAsdValue:I

.field private mAsdenHanceValue:Ljava/lang/String;

.field private final mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

.field private mAutoMacroSwitch:Ljava/lang/String;

.field private mAutoVideoFPS:Ljava/lang/String;

.field private mAutoWaterMarkValue:Ljava/lang/String;

.field private mAutoZoomValue:I

.field private mBlurValue:Ljava/lang/String;

.field private mBurstProgress:I

.field private mBvValue:I

.field private mCCTValue:I

.field private final mCamExceptionBundleQueue:Ljava/util/LinkedList;

.field private mCameraBootMethod:I

.field private mCameraId:Ljava/lang/String;

.field private mCameraIdFacebeautyCache:Ljava/lang/String;

.field private mCameraIdFilterCache:Ljava/lang/String;

.field private mCameraIdFilterSuperNightCache:Ljava/lang/String;

.field private mCameraNameValue:Ljava/lang/String;

.field private mCameraStartTime:J

.field private mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

.field private mCaptureTime:I

.field private mCaptureType:I

.field private mCelebritySceneType:I

.field private mClickZoomValue:I

.field private final mContext:Landroid/content/Context;

.field private mDualVideoCameraIds:Ljava/lang/String;

.field private mDualVideoCameraNames:Ljava/lang/String;

.field private mDualVideoStatus:I

.field private mDualVideoWindowCutRatio:F

.field private mDualVideoWindowStyle:I

.field private mEditWaterMarkBrandValue:Ljava/lang/String;

.field private final mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

.field private mFaceBeautyStartTime:J

.field private final mFaceBeautyV3:Z

.field private mFaceBeautyValue:[I

.field private mFaceCount:I

.field private mFaceDetectTime:J

.field private mFaceInfoAge:I

.field private mFaceInfoDetected:Z

.field private mFaceInfoSex:I

.field private mFilterStartTime:J

.field private mFilterSuperNightStartTime:J

.field private mFilterValue:Ljava/lang/String;

.field private mFlareRemoverEffectValue:I

.field private mFlash:Ljava/lang/String;

.field private mFlashSnapButtonValue:I

.field private mFocusCount:I

.field private mFocusTime:J

.field private mFpsCountForMode:I

.field private final mFpsForCaptureStart:Ljava/util/LinkedList;

.field private mFpsTotalForMode:I

.field private mFpsValue:I

.field private mFrontDualFlashColorTemp:I

.field private mFrontDualFlashStrengthMode:I

.field private mFunVideoFilterValue:Ljava/lang/String;

.field private mGPS:Ljava/lang/String;

.field private mGenderValue:Ljava/lang/String;

.field private mGoldWaterMarkValue:Ljava/lang/String;

.field private mGoldWatermarkBgValue:Ljava/lang/String;

.field private mGuideFragmentStartTime:J

.field private mHdValue:Ljava/lang/String;

.field private mHdr10PlusValue:I

.field private mHdrValue:Ljava/lang/String;

.field private mHumanEffectValue:Ljava/lang/String;

.field private mImageStyleValue:Ljava/lang/String;

.field private mIsFaceBeautyMode:Z

.field private mIsFirstConnectService:Z

.field private mIsInMode:Z

.field private mIsMultiGenderOrMultiSkin:I

.field private mIsQueueExceeded:Z

.field private mIsTriggerTypeSet:Z

.field private mKeyVideoDuration:Ljava/lang/String;

.field private mLVValue:I

.field private mLastTemperatureTimeForRecording:J

.field private mLaunchStartTime:J

.field private mLaunchStartType:I

.field private mLivePhotoValue:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mLongExposureSceneValue:Ljava/lang/String;

.field private mLowestFpsValueForCapture:I

.field private mLuminanceValue:I

.field private mMakeUpIntensityValue:F

.field private mMakeUpValue:I

.field private mMaxFaceRatio:F

.field private mModeName:Ljava/lang/String;

.field private mModeReumeTime:J

.field private mMoonDetectionValue:I

.field private mMoreModeDisplayType:Ljava/lang/String;

.field private mMotionSnapInfo:Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;

.field private final mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

.field private mNightAlgo:I

.field private mNightHawkDetected:I

.field private final mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

.field private mPictureRatioValue:Ljava/lang/String;

.field private mPortraitArchParameterVersion:Ljava/lang/String;

.field private mPortraitFlareValue:Ljava/lang/String;

.field private mPortraitModeEnhanceValue:Ljava/lang/String;

.field private mSaveUriId:Ljava/lang/String;

.field private mScreenBrightness:I

.field private mScreenBrightnessMode:I

.field private mScreenFlashShow:Z

.field private mScreenType:I

.field private mSelfTimerValue:Ljava/lang/String;

.field private mShot2ClickThumbnail:I

.field private mShot2SeeTime:I

.field private mShot2ShotCount:I

.field private mShutterSoundOptional:I

.field private mSkinOptimizationValue:I

.field private mSkyType:I

.field private final mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

.field private mSlimbodyValue:[I

.field private mSlowMotionFps:I

.field private mSmileValue:Ljava/lang/String;

.field private mStartCaptureTime:J

.field private mStreetPhotoFocalDistanceValue:F

.field private mStreetPhotoStyleValue:Ljava/lang/String;

.field private mSuperNightFilterValue:Ljava/lang/String;

.field private mSuperNightLightValue:I

.field private mSuperNightStable:Ljava/lang/String;

.field private mTemperatureCountForMode:I

.field private final mTemperatureForCapture:Ljava/util/List;

.field private final mTemperatureForRecording:Ljava/util/List;

.field private mTemperatureTotalForMode:I

.field private mTemperatureValue:I

.field private mTintValue:I

.field private mTotalZoomValue:F

.field private mTranssionFilterValue:I

.field private mTriggerType:Ljava/lang/String;

.field private mVIPCaptureValue:I

.field private mVideoAsdEffect:I

.field private mVideoAsdValue:I

.field private mVideoBeautyValue:Ljava/lang/String;

.field private mVideoDuration:J

.field private mVideoEffectValue:I

.field private mVideoEnhanceValue:Ljava/lang/String;

.field private mVideoEnhanceYUVEnable:Z

.field private mVideoFrameValue:I

.field private mVideoHDRValue:Ljava/lang/String;

.field private mVideoMakeUpIntensityValue:F

.field private mVideoMakeUpValue:I

.field private mVideoPortraitLevelValue:I

.field private mVideoPortraitValue:Ljava/lang/String;

.field private mVideoPreIspValue:Ljava/lang/String;

.field private mVideoQuality:Ljava/lang/String;

.field private mVideoRecording:Z

.field private mVideoRecordingEffectValue:Ljava/lang/String;

.field private mVideoRecordingEffectZoomValue:Ljava/lang/String;

.field private mVideoSpotValue:Ljava/lang/String;

.field private mVideoSuperNightEnable:Z

.field private mVideoSuperNightYUVEnable:Z

.field private mVideoTimeLapseDuration:Ljava/lang/String;

.field private mVideoTimeLapseRate:Ljava/lang/String;

.field private mVolumeShutter:I

.field private mZoomValue:F


# direct methods
.method public static synthetic $r8$lambda$ftnd1P_24NSYcQKf9I_WuEPt62k(JLcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;)Z
    .registers 5

    .line 1915
    iget-wide v0, p2, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;->time:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnalyticsUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 360
    const-string v0, ""

    sput-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mOobeCountry:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 15

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLock:Ljava/lang/Object;

    .line 164
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    .line 165
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 166
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    .line 167
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    .line 168
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoAsdValue:I

    .line 169
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoAsdEffect:I

    const/4 v3, 0x0

    .line 170
    iput v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:F

    .line 171
    iput v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTotalZoomValue:F

    .line 172
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    .line 173
    const-string v4, "off"

    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    .line 174
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunVideoFilterValue:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLivePhotoValue:Ljava/lang/String;

    const/4 v5, -0x1

    .line 179
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    .line 180
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    .line 181
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    .line 182
    const-string v6, "video_facebeauty_off"

    iput-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    .line 183
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    .line 184
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSpotValue:Ljava/lang/String;

    .line 185
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    .line 186
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    .line 188
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPreIspValue:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoVideoFPS:Ljava/lang/String;

    .line 190
    const-string v6, "1"

    iput-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    .line 191
    const-string v6, "unlimited"

    iput-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHumanEffectValue:Ljava/lang/String;

    .line 193
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShutterSoundOptional:I

    const-wide/16 v6, 0x0

    .line 195
    iput-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    .line 196
    iput-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 197
    iput-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    .line 198
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    .line 200
    iput-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 201
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    .line 202
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    .line 203
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    .line 211
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVolumeShutter:I

    .line 213
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBurstProgress:I

    .line 215
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGPS:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoMacroSwitch:Ljava/lang/String;

    .line 286
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    .line 294
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    .line 295
    const-string v8, "auto"

    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    .line 296
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    .line 297
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    .line 298
    iput v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    .line 300
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    .line 301
    iput-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    const/4 v8, 0x0

    .line 302
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    .line 303
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    .line 304
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mImageStyleValue:Ljava/lang/String;

    .line 305
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    .line 306
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    .line 307
    const-string v9, "-1"

    iput-object v9, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    .line 308
    iput-object v9, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    .line 309
    const-string v10, "grid"

    iput-object v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoreModeDisplayType:Ljava/lang/String;

    .line 310
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsMultiGenderOrMultiSkin:I

    .line 311
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlashSnapButtonValue:I

    .line 313
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    .line 361
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2Name:Ljava/lang/String;

    .line 362
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2Size:I

    .line 363
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2Type:Ljava/lang/String;

    .line 364
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2NetType:Ljava/lang/String;

    .line 365
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2Sort:Ljava/lang/String;

    .line 366
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2VideoDuration:I

    const/16 v10, -0x3e8

    .line 395
    iput v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    .line 396
    iput v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    .line 397
    iput v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    .line 398
    iput v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTintValue:I

    .line 403
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpValue:I

    .line 404
    iput v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpIntensityValue:F

    .line 407
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    .line 408
    iput v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    .line 410
    const-string v10, "f0.0"

    iput-object v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBlurValue:Ljava/lang/String;

    .line 412
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    .line 414
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEffectValue:I

    .line 416
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoFrameValue:I

    .line 419
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceValue:Ljava/lang/String;

    .line 420
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightEnable:Z

    .line 422
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightYUVEnable:Z

    .line 423
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceYUVEnable:Z

    .line 425
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitLevelValue:I

    .line 427
    iput-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    .line 432
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    .line 433
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFirstConnectService:Z

    .line 434
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraBootMethod:I

    .line 443
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureValue:I

    .line 444
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecording:Z

    const-wide/16 v10, -0x1

    .line 445
    iput-wide v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLastTemperatureTimeForRecording:J

    .line 448
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForRecording:Ljava/util/List;

    .line 451
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForCapture:Ljava/util/List;

    .line 453
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    iput-object v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsForCaptureStart:Ljava/util/LinkedList;

    .line 454
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLowestFpsValueForCapture:I

    .line 456
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsInMode:Z

    .line 457
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureCountForMode:I

    .line 458
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureTotalForMode:I

    .line 463
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsValue:I

    .line 464
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsCountForMode:I

    .line 465
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsTotalForMode:I

    .line 473
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoStatus:I

    .line 474
    const-string v10, "0_1"

    iput-object v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraIds:Ljava/lang/String;

    .line 475
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraNames:Ljava/lang/String;

    const/4 v1, 0x2

    .line 476
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowStyle:I

    .line 477
    iput v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowCutRatio:F

    .line 480
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mClickZoomValue:I

    .line 494
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    .line 500
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    .line 502
    iput-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGuideFragmentStartTime:J

    .line 515
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    .line 531
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    .line 533
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2ClickThumbnail:I

    .line 542
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    .line 543
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGoldWaterMarkValue:Ljava/lang/String;

    .line 544
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGoldWatermarkBgValue:Ljava/lang/String;

    .line 546
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mActivityOrientation:I

    .line 555
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightnessMode:I

    .line 556
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightness:I

    .line 558
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightLightValue:I

    .line 562
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitFlareValue:Ljava/lang/String;

    .line 585
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlareRemoverEffectValue:I

    .line 598
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCelebritySceneType:I

    .line 601
    iput v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdr10PlusValue:I

    .line 605
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoZoomValue:I

    .line 614
    iput-object v9, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    .line 615
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsTriggerTypeSet:Z

    .line 1706
    iput-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    .line 1909
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->faceInfos:Ljava/util/LinkedList;

    .line 1910
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->faceInfoBound:Landroid/os/Bundle;

    .line 2044
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    .line 2045
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    .line 2533
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCamExceptionBundleQueue:Ljava/util/LinkedList;

    const/16 v0, 0x14

    .line 2534
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->MAX_QUEUE_SIZE:I

    .line 2535
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsQueueExceeded:Z

    if-eqz p2, :cond_16c

    .line 768
    const-string p2, "com.transsion.camera.athena.AnalyticsImpl"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    goto :goto_16e

    .line 770
    :cond_16c
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    .line 772
    :goto_16e
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    .line 773
    new-instance p1, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    invoke-direct {p1, v8}, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    .line 774
    new-instance p2, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-direct {p2, p1}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    .line 775
    new-instance p1, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    .line 776
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    .line 777
    const-string p1, "face_beauty_v3_0"

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyV3:Z

    .line 778
    sget-object p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAthenaAnalyticsImpl:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private checkFaceValid()V
    .registers 7

    .line 1733
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-lez v0, :cond_16

    goto :goto_17

    :cond_16
    return-void

    .line 1734
    :cond_17
    :goto_17
    iput-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v0, 0x0

    .line 1735
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const/4 v0, 0x0

    .line 1736
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    return-void
.end method

.method private static covertListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_35

    .line 1506
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_35

    .line 1509
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1511
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_30

    .line 1513
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_2d

    .line 1515
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1518
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1507
    :cond_35
    :goto_35
    const-string p0, ""

    return-object p0
.end method

.method private duration(ILjava/lang/String;)V
    .registers 10

    .line 1791
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsTotalForMode:I

    .line 1792
    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsCountForMode:I

    .line 1793
    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureTotalForMode:I

    .line 1794
    iget v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureCountForMode:I

    .line 1795
    invoke-static {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1796
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1797
    iget-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "key_camera_id"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1798
    const-string v5, "key_time_duration"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1799
    const-string v5, "key_mode"

    invoke-virtual {v4, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string v5, "key_temp_board_total"

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1801
    const-string v5, "key_temp_board_count"

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1802
    const-string v5, "key_fps_total"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1803
    const-string v5, "key_fps_count"

    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1804
    iget-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v5, :cond_43

    .line 1805
    const-string v6, "duration"

    invoke-interface {v5, v6, v4}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1809
    :cond_43
    sget-object v4, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_CAMERA_ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1810
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modeName:"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1811
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "duration:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1812
    const-string p0, "="

    const-string p1, "avgTemperature:"

    const-string p2, "/"

    if-eqz v3, :cond_ad

    .line 1813
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p1, v2

    int-to-float v2, v3

    div-float/2addr p1, v2

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_c5

    .line 1816
    :cond_ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1818
    :goto_c5
    const-string p1, "avgFps:"

    if-eqz v1, :cond_eb

    .line 1819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p0, v0

    int-to-float p1, v1

    div-float/2addr p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1822
    :cond_eb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private enqueueCameraExceptionEvent(I)V
    .registers 5

    .line 2552
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCamExceptionBundleQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3b

    .line 2553
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsQueueExceeded:Z

    if-nez v0, :cond_35

    .line 2554
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enqueueCameraExceptionEvent] Queue size exceeded, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCamExceptionBundleQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2555
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsQueueExceeded:Z

    .line 2557
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCamExceptionBundleQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_3e

    :cond_3b
    const/4 v0, 0x0

    .line 2559
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsQueueExceeded:Z

    .line 2561
    :goto_3e
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCamExceptionBundle(I)Landroid/os/Bundle;

    move-result-object p1

    .line 2562
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCamExceptionBundleQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCamExceptionBundle(I)Landroid/os/Bundle;
    .registers 6

    .line 2542
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2543
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2544
    const-string v2, "key_camera_id"

    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    const-string v2, "key_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    const-string v1, "key_camera_name"

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    const-string p0, "cam_error_type"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
    .registers 1

    .line 782
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    return-object v0
.end method

.method private getVideoEnhanceDescription()Ljava/lang/String;
    .registers 3

    .line 2369
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v1

    .line 2370
    :cond_b
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightEnable:Z

    if-eqz p0, :cond_12

    const-string p0, "super_night"

    return-object p0

    :cond_12
    const-string p0, "hdr"

    return-object p0
.end method

.method private getVideoEnhanceYUVDescription()Ljava/lang/String;
    .registers 2

    .line 2378
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceYUVEnable:Z

    if-nez v0, :cond_7

    const-string p0, "off"

    return-object p0

    .line 2379
    :cond_7
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightYUVEnable:Z

    if-eqz p0, :cond_e

    const-string p0, "yuv_super_night"

    return-object p0

    :cond_e
    const-string p0, "hdr"

    return-object p0
.end method

.method private handleCameraExceptionEventQueue(I)V
    .registers 6

    .line 2566
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCamExceptionBundleQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 2567
    const-string v2, "cam_exception"

    const-string v3, "cam_use_total_time"

    if-eqz v0, :cond_2f

    .line 2568
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2569
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2571
    iget-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCamExceptionBundleQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    :goto_1d
    if-eqz p1, :cond_2e

    .line 2573
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2574
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2575
    iget-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCamExceptionBundleQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_1d

    :cond_2e
    return-void

    .line 2578
    :cond_2f
    invoke-direct {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCamExceptionBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2579
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2580
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4

    .line 760
    const-string v0, "persist.sys.fans.support"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 761
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableAthena:Z

    .line 762
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mOobeCountryCode:Ljava/lang/String;

    sput-object v2, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mOobeCountry:Ljava/lang/String;

    .line 763
    new-instance v2, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    if-nez v0, :cond_25

    if-eqz v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    return-void
.end method

.method private static launchStartType(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_17

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    .line 2442
    const-string p0, ""

    return-object p0

    .line 2434
    :cond_e
    const-string p0, "hard"

    return-object p0

    .line 2436
    :cond_11
    const-string p0, "warm"

    return-object p0

    .line 2438
    :cond_14
    const-string p0, "cold"

    return-object p0

    .line 2432
    :cond_17
    const-string p0, "unknown"

    return-object p0
.end method

.method private resetCaptureParameters()V
    .registers 4

    .line 1082
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v0, :cond_a

    .line 1084
    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/CaptureExif;->resetCaptureExif()V

    :cond_a
    const/4 v0, 0x0

    .line 1086
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-wide/16 v1, 0x0

    .line 1087
    iput-wide v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v1, 0x0

    .line 1088
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    .line 1089
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    .line 1090
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVolumeShutter:I

    .line 1091
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBurstProgress:I

    return-void
.end method

.method private resetFaceInfo()V
    .registers 2

    const/4 v0, -0x1

    .line 1119
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    .line 1120
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    const/4 v0, 0x0

    .line 1121
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    .line 1122
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsMultiGenderOrMultiSkin:I

    return-void
.end method

.method private resetVideoParameters()V
    .registers 4

    .line 1522
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    const/4 v0, 0x0

    .line 1523
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-wide/16 v1, 0x0

    .line 1524
    iput-wide v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v1, 0x0

    .line 1525
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    .line 1526
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    .line 1527
    const-string v1, "-1"

    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    .line 1528
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsTriggerTypeSet:Z

    return-void
.end method

.method private saveFpsForCapturing(I)V
    .registers 3

    .line 2128
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsForCaptureStart:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2130
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLowestFpsValueForCapture:I

    if-ltz v0, :cond_10

    if-ge p1, v0, :cond_f

    goto :goto_10

    :cond_f
    return-void

    .line 2131
    :cond_10
    :goto_10
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLowestFpsValueForCapture:I

    return-void

    :cond_13
    const/4 p1, -0x1

    .line 2134
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLowestFpsValueForCapture:I

    return-void
.end method

.method private saveFpsForMode(I)V
    .registers 3

    .line 2114
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsInMode:Z

    if-eqz v0, :cond_15

    .line 2115
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsTotalForMode:I

    if-gtz v0, :cond_b

    .line 2116
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsTotalForMode:I

    goto :goto_e

    :cond_b
    add-int/2addr v0, p1

    .line 2118
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsTotalForMode:I

    .line 2120
    :goto_e
    iget p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsCountForMode:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsCountForMode:I

    return-void

    :cond_15
    const/4 p1, 0x0

    .line 2122
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsCountForMode:I

    .line 2123
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsTotalForMode:I

    return-void
.end method

.method private saveTemperatureForMode(I)V
    .registers 3

    .line 2094
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsInMode:Z

    if-eqz v0, :cond_15

    .line 2095
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureTotalForMode:I

    if-gtz v0, :cond_b

    .line 2096
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureTotalForMode:I

    goto :goto_e

    :cond_b
    add-int/2addr v0, p1

    .line 2098
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureTotalForMode:I

    .line 2100
    :goto_e
    iget p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureCountForMode:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureCountForMode:I

    return-void

    :cond_15
    const/4 p1, 0x0

    .line 2102
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureTotalForMode:I

    .line 2103
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureCountForMode:I

    return-void
.end method

.method private saveTemperatureForRecording(I)V
    .registers 7

    .line 2080
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecording:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_29

    .line 2081
    iget-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLastTemperatureTimeForRecording:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_19

    .line 2083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    goto :goto_19

    :cond_18
    return-void

    .line 2084
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForRecording:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLastTemperatureTimeForRecording:J

    return-void

    .line 2088
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForRecording:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2089
    iput-wide v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLastTemperatureTimeForRecording:J

    return-void
.end method

.method private setFilterTime()V
    .registers 10

    .line 1234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1235
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1236
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v3, :cond_3f

    .line 1237
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_time_duration"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v4, "key_camera_id"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1240
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "filter_time"

    invoke-interface {v2, v4, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3f
    const-wide/16 v2, 0x0

    .line 1242
    iput-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 1243
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static setFrontWideCameraId(Ljava/lang/String;)V
    .registers 1

    .line 1636
    sput-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sFrontWideCameraId:Ljava/lang/String;

    return-void
.end method

.method private setSuperNightFilterTime()V
    .registers 10

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1248
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1249
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v3, :cond_3f

    .line 1250
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_time_duration"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v4, "key_camera_id"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1253
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "filter_supernight_time"

    invoke-interface {v2, v4, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3f
    const-wide/16 v2, 0x0

    .line 1255
    iput-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    .line 1256
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter time for super night"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static setsWideCameraId(Ljava/lang/String;)V
    .registers 1

    .line 1628
    sput-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sWideCameraId:Ljava/lang/String;

    return-void
.end method

.method private static simpleModeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1c

    .line 1096
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_a

    goto :goto_1c

    .line 1097
    :cond_a
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1096
    :cond_1c
    :goto_1c
    const-string p0, ""

    return-object p0
.end method

.method private updateFaceInfo()V
    .registers 5

    .line 1101
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_46

    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    if-ne v0, v1, :cond_e

    goto :goto_46

    .line 1104
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->updateFaceInfo(Landroid/content/Context;)V

    .line 1105
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    if-eq v0, v1, :cond_2c

    .line 1106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1107
    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "key_sex_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1108
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v3, "sex"

    invoke-interface {v2, v3, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1110
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    if-eq v0, v1, :cond_43

    .line 1111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1112
    const-string v1, "key_age_id"

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1113
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "age"

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1115
    :cond_43
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFaceInfo()V

    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public declared-synchronized addFaceInfo(Ljava/util/List;)V
    .registers 6

    monitor-enter p0

    .line 1914
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    .line 1915
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->faceInfos:Ljava/util/LinkedList;

    new-instance v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1916
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->faceInfos:Ljava/util/LinkedList;

    new-instance v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;

    invoke-direct {v1, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$FaceInfoWrapper;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 1917
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public age(I)V
    .registers 2

    .line 1155
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    const/4 p1, 0x1

    .line 1156
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return-void
.end method

.method public captureDone()V
    .registers 18

    move-object/from16 v0, p0

    .line 832
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 834
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForCapture:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForCapture:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 837
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v3, :cond_2b

    .line 838
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 840
    :cond_2b
    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->covertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 842
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 843
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsForCaptureStart:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 844
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsForCaptureStart:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 845
    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLowestFpsValueForCapture:I

    if-eqz v5, :cond_5a

    .line 846
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_5a

    if-lez v6, :cond_5a

    .line 847
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_5a
    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->covertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 853
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    .line 855
    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->checkFaceValid()V

    .line 856
    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const v7, 0x461c4000    # 10000.0f

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v6, :cond_403

    .line 857
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 858
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "key_camera_id"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 859
    const-string v10, "key_mode"

    invoke-virtual {v6, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v10, "key_asd"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 861
    const-string v10, "key_asd_effect"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 862
    const-string v10, "key_camera_zoom"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:F

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 863
    const-string v10, "key_total_zoom"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTotalZoomValue:F

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 864
    const-string v10, "key_picture_ratio"

    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v10, "key_filter"

    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v10, "key_supernight_filter"

    iget-object v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getHdrId(Ljava/lang/String;)I

    move-result v10

    const-string v11, "key_hdr"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 868
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLivePhotoValue:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getLivePhotoValue(Ljava/lang/String;)I

    move-result v10

    const-string v11, "key_live_photo"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 869
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getTimerId(Ljava/lang/String;)I

    move-result v10

    const-string v11, "key_self_timer"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 870
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v10}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValueInt()I

    move-result v10

    const-string v11, "key_face_beauty"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 871
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "key_super_definition"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 872
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSmileValue(Ljava/lang/String;)I

    move-result v10

    const-string v11, "key_smile"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 873
    const-string v10, "focus_num"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 874
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v10

    const-string v11, "flash"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 875
    const-string v10, "face_num"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 876
    iget v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    mul-float/2addr v10, v7

    float-to-int v10, v10

    const-string v11, "face_ratio"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 877
    const-string v10, "capture_duration"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 878
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAsdEnhanceValue(Ljava/lang/String;)I

    move-result v10

    const-string v11, "asd_enhance"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 879
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mImageStyleValue:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getImageStyleValue(Ljava/lang/String;)I

    move-result v10

    const-string v11, "image_style"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 880
    const-string v10, "key_setting_skin_optimization"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkinOptimizationValue:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 881
    const-string v10, "key_moon_detection"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoonDetectionValue:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 882
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v10, v4

    const-string v11, "key_gender"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 883
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "key_age"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 884
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHumanEffectValue:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "human_effect"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 885
    const-string v10, "magic_sky_type"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 886
    const-string v10, "key_scene_preset"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCelebritySceneType:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 887
    const-string v10, "key_shot2shot_count"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2ShotCount:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 888
    const-string v10, "key_temp_board_values"

    invoke-virtual {v6, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v10, "key_fps_values"

    invoke-virtual {v6, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v10, :cond_1c3

    .line 892
    const-string v11, "exif_flash"

    invoke-virtual {v10}, Lcom/transsion/camera/utils/analytics/CaptureExif;->analyticsFlash()I

    move-result v10

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 893
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget v10, v10, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    const-string v11, "exif_iso"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 894
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget-wide v10, v10, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    const-string v11, "exif_ev"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 895
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget-wide v10, v10, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureBiasValue:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    const-string v11, "exif_exp_comp"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_1c3
    const-string v10, "night_algo"

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 898
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-static {v10}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightStable(Ljava/lang/String;)I

    move-result v10

    const-string v11, "night_value"

    invoke-virtual {v6, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 899
    iget-object v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x4

    if-eqz v10, :cond_23c

    .line 901
    array-length v15, v10

    if-ge v15, v3, :cond_1ea

    .line 902
    const-string v15, "parameter_1"

    move/from16 v16, v3

    aget v3, v10, v9

    invoke-virtual {v6, v15, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_217

    :cond_1ea
    move/from16 v16, v3

    .line 903
    array-length v3, v10

    if-lt v3, v14, :cond_217

    .line 904
    const-string v3, "parameter_4"

    aget v15, v10, v9

    invoke-virtual {v6, v3, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 905
    iget-boolean v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyV3:Z

    if-eqz v3, :cond_202

    .line 906
    const-string v3, "skin_color_card"

    aget v15, v10, v8

    invoke-virtual {v6, v3, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_209

    .line 908
    :cond_202
    const-string v3, "parameter_5"

    aget v15, v10, v8

    invoke-virtual {v6, v3, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 910
    :goto_209
    const-string v3, "parameter_6"

    aget v15, v10, v16

    invoke-virtual {v6, v3, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 911
    const-string v3, "parameter_7"

    aget v15, v10, v4

    invoke-virtual {v6, v3, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 913
    :cond_217
    :goto_217
    array-length v3, v10

    if-lt v3, v13, :cond_22f

    .line 914
    const-string v3, "parameter_15"

    aget v15, v10, v12

    invoke-virtual {v6, v3, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 915
    const-string v3, "parameter_16"

    aget v15, v10, v11

    invoke-virtual {v6, v3, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 916
    const-string v3, "parameter_17"

    aget v15, v10, v14

    invoke-virtual {v6, v3, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 918
    :cond_22f
    array-length v3, v10

    const/16 v15, 0x8

    if-lt v3, v15, :cond_23e

    .line 919
    const-string v3, "parameter_18"

    aget v10, v10, v13

    invoke-virtual {v6, v3, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_23e

    :cond_23c
    move/from16 v16, v3

    .line 922
    :cond_23e
    :goto_23e
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v3, :cond_288

    .line 924
    array-length v10, v3

    if-ge v10, v8, :cond_254

    .line 925
    const-string v10, "parameter_2"

    aget v11, v3, v9

    invoke-virtual {v6, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 926
    const-string v10, "parameter_3"

    aget v3, v3, v4

    invoke-virtual {v6, v10, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_288

    .line 927
    :cond_254
    array-length v10, v3

    if-lt v10, v13, :cond_288

    .line 928
    const-string v10, "parameter_8"

    aget v13, v3, v9

    invoke-virtual {v6, v10, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 929
    const-string v10, "parameter_9"

    aget v4, v3, v4

    invoke-virtual {v6, v10, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 930
    const-string v4, "parameter_10"

    aget v10, v3, v16

    invoke-virtual {v6, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 931
    const-string v4, "parameter_11"

    aget v10, v3, v8

    invoke-virtual {v6, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 932
    const-string v4, "parameter_12"

    aget v10, v3, v14

    invoke-virtual {v6, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 933
    const-string v4, "parameter_13"

    aget v10, v3, v12

    invoke-virtual {v6, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 934
    const-string v4, "parameter_14"

    aget v3, v3, v11

    invoke-virtual {v6, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 937
    :cond_288
    :goto_288
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMotionSnapInfo:Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;

    .line 938
    const-string v4, "key_snap_button"

    if-eqz v3, :cond_2b7

    .line 939
    iget v10, v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapButtonValue:I

    invoke-virtual {v6, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 940
    const-string v4, "key_snap_type"

    iget v10, v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapType:I

    invoke-virtual {v6, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 941
    const-string v4, "key_snap_trigger_mode"

    iget v10, v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapTriggerMode:I

    invoke-virtual {v6, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 942
    const-string v4, "key_snap_banding"

    iget v10, v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mBanding:I

    invoke-virtual {v6, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 943
    const-string v4, "key_snap_main_freq"

    iget v10, v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mMainFreq:F

    invoke-virtual {v6, v4, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 944
    const-string v4, "key_motion_intensity"

    iget v3, v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mMotionIntensity:I

    invoke-virtual {v6, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2d4

    .line 946
    :cond_2b7
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "motionSnapInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlashSnapButtonValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 947
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlashSnapButtonValue:I

    invoke-virtual {v6, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 949
    :goto_2d4
    iget-boolean v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getScreenFlashValue(Z)I

    move-result v3

    const-string v4, "screen_flash"

    invoke-virtual {v6, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 950
    const-string v3, "bv_value"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 951
    const-string v3, "lv_value"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 952
    const-string v3, "cct_value"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 953
    const-string v3, "tint_value"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTintValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 954
    const-string v3, "key_makeup"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 955
    const-string v3, "key_makeup_intensity"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpIntensityValue:F

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 956
    const-string v3, "key_blur"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBlurValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v3, "key_click_zoom"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mClickZoomValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 958
    const-string v3, "key_camera_name"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v3, "key_capture_type"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 960
    const-string v3, "key_ai_shutter"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 961
    const-string v3, "key_vip_value"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVIPCaptureValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 962
    const-string v3, "key_screen_type"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 963
    const-string v3, "key_luminance"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 964
    const-string v3, "key_front_dual_flash_color_temp"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 965
    const-string v3, "key_front_dual_flash_strength_mode"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 966
    const-string v3, "key_portraitmode_enhance"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v3, "key_shot2see_time"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 968
    const-string v3, "key_brand_watermark"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v3, "key_gold_watermark"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGoldWaterMarkValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v3, "key_pro_watermark_type"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGoldWatermarkBgValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v3, "key_activity_orientation"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mActivityOrientation:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 972
    const-string v3, "key_screen_brightness_mode"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightnessMode:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 973
    const-string v3, "key_screen_brightness"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightness:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 974
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->faceInfoBound:Landroid/os/Bundle;

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 975
    const-string v3, "key_super_night_light"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightLightValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 976
    const-string v3, "key_portrait_flare"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitFlareValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v3, "key_volume_shutter"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVolumeShutter:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 978
    const-string v3, "key_burst_progress"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBurstProgress:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 979
    const-string v3, "key_gps"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGPS:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v3, "key_macro_usage"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoMacroSwitch:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v3, "key_aigc_effect"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIGCEffectValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v3, "key_ai_art"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIArtValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v3, "key_long_exposure_scene"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLongExposureSceneValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v3, "key_shutter_sound_optional"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShutterSoundOptional:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 985
    const-string v3, "key_setting_focus_distance"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStreetPhotoFocalDistanceValue:F

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 986
    const-string v3, "key_street_photo_style"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStreetPhotoStyleValue:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v3, "key_is_multi_gender_or_skin"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsMultiGenderOrMultiSkin:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 988
    const-string v3, "key_flare_remover_effect"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlareRemoverEffectValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 989
    const-string v3, "key_auto_zoom"

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoZoomValue:I

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 990
    const-string v3, "media_id"

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSaveUriId:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "capture"

    invoke-interface {v3, v4, v6}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 993
    :cond_403
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v3}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a4a

    .line 994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mModeName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHdValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ---:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 996
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSmileValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSmileValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLivePhotoValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLivePhotoValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLivePhotoValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getLivePhotoValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 998
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFocusCount:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[capture] mFaceInfoSex:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mFaceInfoAge:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  faceInfoDetected:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlash:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAsdenHanceValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAsdEnhanceValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFaceCount:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1003
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShot2ShotCount:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2ShotCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMaxFaceRatio:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1005
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCaptureTime:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1006
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGenderValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSkinOptimizationValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkinOptimizationValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1008
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMoonDetectionValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoonDetectionValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAgeValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1010
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAsdValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAsdEffect:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSuperNightFilterValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1013
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHumanEffectValue:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHumanEffectValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCelebritySceneType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCelebritySceneType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1015
    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v4, :cond_636

    .line 1016
    invoke-virtual {v4}, Lcom/transsion/camera/utils/analytics/CaptureExif;->printLog()V

    .line 1018
    :cond_636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMagicSkyType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNightAlgo:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSuperNightStable:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightStable(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1021
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    .line 1022
    const-string v4, "]:"

    if-eqz v3, :cond_6af

    move v5, v9

    .line 1023
    :goto_68b
    array-length v6, v3

    if-ge v5, v6, :cond_6af

    .line 1024
    sget-object v6, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFaceBeautyValue["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_68b

    .line 1027
    :cond_6af
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v3, :cond_6d7

    .line 1029
    :goto_6b3
    array-length v5, v3

    if-ge v9, v5, :cond_6d7

    .line 1030
    sget-object v5, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSlimbodyValue["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6b3

    .line 1033
    :cond_6d7
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMotionSnapInfo:Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;

    if-eqz v3, :cond_6f2

    .line 1035
    sget-object v4, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMotionSnapInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_70a

    .line 1037
    :cond_6f2
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFlashSnapButtonValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlashSnapButtonValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1039
    :goto_70a
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenFlashValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBvValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLVValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCCTValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCameraNameValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCaputreType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAIShutterValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLuminanceValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFrontDualFlashColorTemp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1049
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFrontDualFlashStrengthMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1050
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPortraitModeEnhanceValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mShot2SeeTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEditWaterMarkBrandValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1053
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGoldWaterMarkValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGoldWaterMarkValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1054
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGoldWatermarkBgValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGoldWatermarkBgValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mActivityOrientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mActivityOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBrightnessMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightnessMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mBrightness:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSuperNightLightValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightLightValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPortraitFlareValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitFlareValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1059
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVolumeShutter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVolumeShutter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBurstProgress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBurstProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAutoMacroSwitch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoMacroSwitch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1062
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAIGCEffectValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIGCEffectValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAIArtValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIArtValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLongExposureSceneValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLongExposureSceneValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStreetPhotoFocalDistanceValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStreetPhotoFocalDistanceValue:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStreetPhotoStyleValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStreetPhotoStyleValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGPS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1068
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mShutterSoundOptional: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShutterSoundOptional:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1069
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsMultiGenderOrMultiSkin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsMultiGenderOrMultiSkin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFlareRemoverEffectValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlareRemoverEffectValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAutoZoomValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoZoomValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mZoomValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTotalZoomValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTotalZoomValue:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureDone, temperatureStr "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fpsStr: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSaveUriId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSaveUriId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1077
    :cond_a4a
    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateFaceInfo()V

    .line 1078
    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetCaptureParameters()V

    return-void
.end method

.method public dualVideo(I)V
    .registers 4

    .line 2519
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoStatus:I

    .line 2520
    iget-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p1, :cond_35

    .line 2521
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2522
    const-string v0, "key_dualvideo_status"

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2523
    const-string v0, "key_dualvideo_camera_ids"

    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraIds:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    const-string v0, "key_dualvideo_camera_names"

    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraNames:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    const-string v0, "key_dualvideo_window_style"

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2526
    const-string v0, "key_dualvideo_windowcut_ratio"

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowCutRatio:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2527
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v0, "dual_video"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_35
    return-void
.end method

.method public focus()V
    .registers 3

    .line 1713
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    .line 1714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusTime:J

    return-void
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 1166
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public inCreaseShot2ShotCount()V
    .registers 2

    .line 1723
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2ShotCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2ShotCount:I

    return-void
.end method

.method public isFaceBeautyMode()Z
    .registers 1

    .line 1126
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    return p0
.end method

.method public isFaceInfoDetected()Z
    .registers 1

    .line 1130
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return p0
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 2038
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_7

    .line 2039
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public needFaceInfoDetection()Z
    .registers 5

    .line 1134
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1138
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->currentDayHasMaxDetectNumber(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x1

    .line 1144
    :cond_14
    :goto_14
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[needFaceInfoDetection] needDetection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  faceInfoDetected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public notifyNightHawkDetected()V
    .registers 2

    const/4 v0, 0x1

    .line 2052
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    return-void
.end method

.method public onAppServiceConnected(Z)V
    .registers 5

    .line 2414
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", launchType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    .line 2415
    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->launchStartType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2414
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2416
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFirstConnectService:Z

    if-nez p1, :cond_2b

    .line 2418
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetCameraLaunchStartTime()V

    :cond_2b
    return-void
.end method

.method public onCamError(I)V
    .registers 2

    .line 2538
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->enqueueCameraExceptionEvent(I)V

    return-void
.end method

.method public onRecordStarted()V
    .registers 3

    .line 1327
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForRecording:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, -0x1

    .line 1328
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLastTemperatureTimeForRecording:J

    .line 1329
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 1331
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForRecording:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    const/4 v0, 0x1

    .line 1333
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecording:Z

    return-void
.end method

.method public quitCameraResetValue()V
    .registers 3

    .line 1685
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->clearValue()V

    .line 1686
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->clearValue()V

    const/4 v0, 0x0

    .line 1687
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2ShotCount:I

    const/4 v0, -0x1

    .line 1688
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsValue:I

    .line 1689
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsForCaptureStart:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1690
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureValue:I

    return-void
.end method

.method public recordEnterGoProModeOperation(Ljava/lang/String;)V
    .registers 4

    .line 2295
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_15

    .line 2296
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2297
    const-string v1, "enter_gopro_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v1, "gopro_mode_enter"

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2301
    :cond_15
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter go pro mode operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public recordEnterMoreModeOperation(Ljava/lang/String;)V
    .registers 5

    .line 2272
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_1c

    .line 2273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2274
    const-string v1, "key_enter_more_mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    const-string v1, "key_more_mode_display_type"

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoreModeDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v1, "more_mode"

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2279
    :cond_1c
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter more mode operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public recordExitMoreModeOperation(Ljava/lang/String;)V
    .registers 4

    .line 2284
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_15

    .line 2285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2286
    const-string v1, "key_exit_more_mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v1, "more_mode"

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2290
    :cond_15
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit more mode operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public reportPortraitArchData()V
    .registers 4

    .line 1590
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitArchParameterVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1591
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[reportPortraitArchData] return !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1594
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_27

    .line 1595
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1596
    const-string v1, "key_portrait_arch_parameter_version"

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitArchParameterVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "serialization_feature"

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1600
    :cond_27
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reportPortraitArchData] mPortraitArchParameterVersion:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitArchParameterVersion:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public reportShutterTriggerTypeData(Z)V
    .registers 5

    .line 786
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsTriggerTypeSet:Z

    const-string v1, "-1"

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    const/16 v2, 0x2f

    .line 787
    invoke-virtual {p0, v2, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;I)V

    const/4 p1, 0x0

    .line 788
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsTriggerTypeSet:Z

    .line 789
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    return-void
.end method

.method public resetCameraLaunchStartTime()V
    .registers 4

    const/4 v0, -0x1

    .line 2423
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    const-wide/16 v0, 0x0

    .line 2424
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    const/4 v2, 0x0

    .line 2425
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraBootMethod:I

    .line 2426
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    return-void
.end method

.method public resetFocus()V
    .registers 3

    const/4 v0, 0x0

    .line 1718
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    const-wide/16 v0, 0x0

    .line 1719
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusTime:J

    return-void
.end method

.method public resetShot2ShotCount()V
    .registers 2

    const/4 v0, 0x0

    .line 1727
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2ShotCount:I

    return-void
.end method

.method public setAIArtValue(Ljava/lang/String;)V
    .registers 2

    .line 2688
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIArtValue:Ljava/lang/String;

    return-void
.end method

.method public setAIGCEffectValue(Ljava/lang/String;)V
    .registers 2

    .line 2684
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIGCEffectValue:Ljava/lang/String;

    return-void
.end method

.method public setAIShutterValue(I)V
    .registers 2

    .line 2619
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    return-void
.end method

.method public setASDalgorithmResult(I)V
    .registers 2

    .line 1178
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    return-void
.end method

.method public setASDeffect(I)V
    .registers 2

    .line 1182
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    return-void
.end method

.method public setActivityOrientation(I)V
    .registers 2

    .line 2667
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mActivityOrientation:I

    return-void
.end method

.method public setAgeValue(Ljava/lang/String;)V
    .registers 2

    .line 1920
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    return-void
.end method

.method public setAiMoonDetectionValue(I)V
    .registers 2

    .line 2357
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoonDetectionValue:I

    return-void
.end method

.method public setAntiVideoValue(Ljava/lang/String;)V
    .registers 2

    .line 1268
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    return-void
.end method

.method public setAutoMacroSwitch(Ljava/lang/String;)V
    .registers 2

    .line 1577
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoMacroSwitch:Ljava/lang/String;

    return-void
.end method

.method public setAutoVideoFPS(Ljava/lang/String;)V
    .registers 2

    .line 1319
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoVideoFPS:Ljava/lang/String;

    return-void
.end method

.method public setAutoWaterMarkValue(Ljava/lang/String;)V
    .registers 2

    .line 2631
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoWaterMarkValue:Ljava/lang/String;

    return-void
.end method

.method public setAutoZoomValue(I)V
    .registers 2

    .line 2708
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoZoomValue:I

    return-void
.end method

.method public setBlurValue(Ljava/lang/String;)V
    .registers 2

    .line 2329
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBlurValue:Ljava/lang/String;

    return-void
.end method

.method public setBodySlimDone()V
    .registers 1

    .line 1657
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setBodySlim()V

    return-void
.end method

.method public setBurstProgress(I)V
    .registers 2

    .line 1569
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBurstProgress:I

    return-void
.end method

.method public setButtPlumpDone()V
    .registers 1

    .line 1673
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setButtPlump()V

    return-void
.end method

.method public setBvValue(I)V
    .registers 2

    .line 2306
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    add-int/lit8 p1, p1, 0x32

    .line 2307
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    return-void
.end method

.method public setCCTValue(I)V
    .registers 2

    .line 2311
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    return-void
.end method

.method public setCameraBootMethod(I)V
    .registers 2

    .line 2402
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraBootMethod:I

    return-void
.end method

.method public setCameraEndTime()V
    .registers 11

    .line 1536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1537
    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6d

    .line 1538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1539
    iget-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1f4

    cmp-long v6, v0, v6

    if-lez v6, :cond_50

    .line 1541
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    long-to-int v7, v0

    .line 1542
    const-string v8, "key_time_duration"

    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1543
    iget-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v8, :cond_2d

    .line 1544
    const-string v9, "camera_time"

    invoke-interface {v8, v9, v6}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1547
    :cond_2d
    div-int/lit16 v7, v7, 0x3e8

    if-nez v7, :cond_32

    const/4 v7, 0x1

    .line 1548
    :cond_32
    invoke-direct {p0, v7}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->handleCameraExceptionEventQueue(I)V

    .line 1550
    sget-object v6, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setCameraEndTime] cameraTimeTemp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1552
    :cond_50
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    .line 1553
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera time "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1555
    :cond_6d
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_76

    .line 1556
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterTime()V

    .line 1559
    :cond_76
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7f

    .line 1560
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightFilterTime()V

    :cond_7f
    return-void
.end method

.method public setCameraId(Ljava/lang/String;)V
    .registers 3

    .line 1160
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1161
    :try_start_3
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    .line 1162
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setCameraLaunchEndTime()V
    .registers 9

    .line 2446
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2de

    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    goto/16 :goto_2de

    .line 2451
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2452
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2453
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v3, :cond_e7

    .line 2454
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2455
    const-string v6, "key_time_duration"

    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    const-string v6, "key_camera_launch_type"

    iget v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2457
    const-string v6, "key_camera_id"

    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    const-string v6, "key_mode"

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const-string v6, "key_camera_name"

    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v6

    const-string v7, "key_anti_video"

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2461
    const-string v6, "asd_enhance"

    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    const-string v6, "image_style"

    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mImageStyleValue:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    const-string v6, "key_video_enhance"

    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceValue:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const-string v6, "key_video_enhance_yuv"

    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v6

    const-string v7, "flash"

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2466
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getHdrId(Ljava/lang/String;)I

    move-result v6

    const-string v7, "key_hdr"

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2467
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLivePhotoValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getLivePhotoValue(Ljava/lang/String;)I

    move-result v6

    const-string v7, "key_live_photo"

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2468
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v6

    const-string v7, "key_video_hdr"

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2469
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "key_super_definition"

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2470
    const-string v6, "key_portraitmode_enhance"

    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    const-string v6, "key_filter"

    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    const-string v6, "key_setting_skin_optimization"

    iget v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkinOptimizationValue:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2473
    const-string v6, "key_moon_detection"

    iget v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoonDetectionValue:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2474
    const-string v6, "key_transsion_filter"

    iget v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2475
    const-string v6, "key_screen_brightness_mode"

    iget v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightnessMode:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2476
    const-string v6, "key_screen_brightness"

    iget v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightness:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2477
    const-string v6, "key_camera_boot_method"

    iget v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraBootMethod:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2478
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v7, "camera_launch_time"

    invoke-interface {v6, v7, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2480
    :cond_e7
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v3}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2d4

    .line 2481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "camera launch time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCameraLaunchStartType "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->launchStartType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCameraId "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modeName "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraNameValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAntiVideoValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAsdenHanceValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoEnhanceDescription() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoEnhanceYUVDescription() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlash "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHdrValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLivePhotoValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLivePhotoValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoHDRValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkinOptimizationValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkinOptimizationValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMoonDetectionValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoonDetectionValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHdValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitModeEnhanceValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFilterValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTranssionFilterValue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBrightnessMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightnessMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBrightness:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraBootMethod "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraBootMethod:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2503
    :cond_2d4
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    const/4 v0, 0x0

    .line 2504
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraBootMethod:I

    .line 2505
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    .line 2506
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    return-void

    .line 2447
    :cond_2de
    :goto_2de
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraLaunchEndTime error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    .line 2448
    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->launchStartType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", launchStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2447
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraNameValue(Ljava/lang/String;)V
    .registers 2

    .line 2611
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    return-void
.end method

.method public setCameraStartTime()V
    .registers 3

    .line 1532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    return-void
.end method

.method public setCaptureExif(Lcom/transsion/camera/utils/analytics/CaptureExif;)V
    .registers 2

    .line 1873
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    return-void
.end method

.method public setCaptureType(I)V
    .registers 2

    .line 2615
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    return-void
.end method

.method public setCelebritySceneType(I)V
    .registers 2

    .line 1928
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCelebritySceneType:I

    return-void
.end method

.method public setClickIconId(I)V
    .registers 5

    .line 1828
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1829
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1830
    const-string v2, "key_icon_click"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1831
    const-string v2, "key_mode"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_1e

    .line 1833
    const-string v2, "click"

    invoke-interface {p0, v2, v1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1836
    :cond_1e
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickIconId id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " modeName:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setClickIconId(ILjava/lang/String;)V
    .registers 7

    .line 1841
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1842
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1843
    const-string v2, "key_icon_click"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1844
    const-string v2, "key_icon_click_value"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1846
    const-string v2, "key_icon_click_value2"

    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSaveUriId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    :cond_2c
    const-string v2, "key_mode"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v2, :cond_3a

    .line 1850
    const-string v3, "click"

    invoke-interface {v2, v3, v1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1853
    :cond_3a
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClickIconId id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " modeName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mSaveUriId:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSaveUriId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setClickIconId(ILjava/lang/String;I)V
    .registers 7

    .line 1858
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1860
    const-string v2, "key_icon_click"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1861
    const-string v2, "key_icon_click_value"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-string v2, "key_icon_click_value2"

    invoke-virtual {v1, v2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1863
    const-string v2, "key_mode"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_28

    .line 1865
    const-string v2, "click"

    invoke-interface {p0, v2, v1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1868
    :cond_28
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickIconId id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " modeName: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value2: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setClickZoomValue(I)V
    .registers 2

    .line 2607
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mClickZoomValue:I

    return-void
.end method

.method public setDualVideoCameraIds(Ljava/lang/String;)V
    .registers 2

    .line 2587
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraIds:Ljava/lang/String;

    return-void
.end method

.method public setDualVideoCameraNames(Ljava/lang/String;)V
    .registers 2

    .line 2591
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraNames:Ljava/lang/String;

    return-void
.end method

.method public setDualVideoWindowCutRatio(F)V
    .registers 2

    .line 2599
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowCutRatio:F

    return-void
.end method

.method public setDualVideoWindowStyle(I)V
    .registers 2

    .line 2595
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowStyle:I

    return-void
.end method

.method public setEditWaterMarkBrandValue(Ljava/lang/String;)V
    .registers 2

    .line 2655
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    return-void
.end method

.method public setFaceBeautyEndTime()V
    .registers 11

    const/4 v0, 0x0

    .line 1611
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    .line 1613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1614
    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_67

    .line 1615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1616
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v6, :cond_4a

    .line 1617
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    sub-long/2addr v0, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_time_duration"

    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_camera_id"

    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1620
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v1, "facebeauty_time"

    invoke-interface {v0, v1, v6}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1622
    :cond_4a
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 1623
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facebeauty time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_67
    return-void
.end method

.method public setFaceBeautyStartTime()V
    .registers 3

    .line 1605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 1606
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1607
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    return-void
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .registers 3

    .line 1644
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->setFaceBeautyValue(Ljava/lang/String;)V

    .line 1645
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setFaceBeautyValue(Ljava/lang/String;)V

    return-void
.end method

.method public setFilterValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1206
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    .line 1207
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "0"

    if-eqz v0, :cond_25

    .line 1208
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1209
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1210
    :cond_22
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterTime()V

    .line 1213
    :cond_25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_39

    .line 1214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 1215
    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    :cond_39
    return-void
.end method

.method public setFlareRemoverEffectValue(I)V
    .registers 2

    .line 2692
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlareRemoverEffectValue:I

    return-void
.end method

.method public setFlash(Ljava/lang/String;)V
    .registers 2

    .line 1709
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    return-void
.end method

.method public setFlashSnapButtonValue(I)V
    .registers 2

    .line 1897
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlashSnapButtonValue:I

    return-void
.end method

.method public setFrontDualFlashColorTemp(I)V
    .registers 2

    .line 2639
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    return-void
.end method

.method public setFrontDualFlashStrengthMode(I)V
    .registers 2

    .line 2643
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    return-void
.end method

.method public setFunVideoFilterValue(Ljava/lang/String;)V
    .registers 2

    .line 2002
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunVideoFilterValue:Ljava/lang/String;

    return-void
.end method

.method public setGPS(Ljava/lang/String;)V
    .registers 2

    .line 1573
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGPS:Ljava/lang/String;

    return-void
.end method

.method public setGenderValue(Ljava/lang/String;)V
    .registers 2

    .line 1893
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    return-void
.end method

.method public setGoldWaterMarkValue(Ljava/lang/String;)V
    .registers 2

    .line 2659
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGoldWaterMarkValue:Ljava/lang/String;

    return-void
.end method

.method public setGoldWatermarkBgValue(Ljava/lang/String;)V
    .registers 2

    .line 2663
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGoldWatermarkBgValue:Ljava/lang/String;

    return-void
.end method

.method public setGuideFragmentEndTime()V
    .registers 7

    .line 2514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGuideFragmentStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 2515
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guide fragment time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGuideFragmentStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setGuideFragmentStartTime()V
    .registers 3

    .line 2510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGuideFragmentStartTime:J

    return-void
.end method

.method public setHdValue(Ljava/lang/String;)V
    .registers 2

    .line 1264
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    return-void
.end method

.method public setHdr10PlusValue(I)V
    .registers 2

    .line 2680
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdr10PlusValue:I

    return-void
.end method

.method public setHdrValue(Ljava/lang/String;)V
    .registers 2

    .line 1296
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    return-void
.end method

.method public setHeadShrinkDone()V
    .registers 1

    .line 1661
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setHeadShrink()V

    return-void
.end method

.method public setImageStyle(Ljava/lang/String;)V
    .registers 2

    .line 1881
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mImageStyleValue:Ljava/lang/String;

    return-void
.end method

.method public setIsMultiGenderOrMultiSkin(I)V
    .registers 2

    .line 1932
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsMultiGenderOrMultiSkin:I

    return-void
.end method

.method public setKeyVideoDurationAndDuration(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 2716
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mKeyVideoDuration:Ljava/lang/String;

    .line 2717
    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoQuality:Ljava/lang/String;

    .line 2718
    iput-wide p3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoDuration:J

    return-void
.end method

.method public setLaunchStartTime(I)V
    .registers 6

    .line 2387
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 2388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    .line 2389
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    return-void

    :cond_e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 2390
    iget-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFirstConnectService:Z

    if-eqz v2, :cond_1f

    .line 2391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    const/4 p1, 0x0

    .line 2392
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFirstConnectService:Z

    return-void

    :cond_1f
    if-ne v0, v1, :cond_36

    .line 2394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    .line 2396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartTime:J

    .line 2397
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLaunchStartType:I

    :cond_36
    return-void
.end method

.method public setLegLengthenDone()V
    .registers 1

    .line 1681
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setLegLengthen()V

    return-void
.end method

.method public setLegSlimDone()V
    .registers 1

    .line 1677
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setLegSlim()V

    return-void
.end method

.method public setLivePhotoValue(Ljava/lang/String;)V
    .registers 2

    .line 1300
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLivePhotoValue:Ljava/lang/String;

    return-void
.end method

.method public setLongExposureSceneValue(Ljava/lang/String;)V
    .registers 2

    .line 2696
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLongExposureSceneValue:Ljava/lang/String;

    return-void
.end method

.method public setLuminanceValue(I)V
    .registers 2

    .line 2635
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    return-void
.end method

.method public setMakeUpValue(IF)V
    .registers 3

    .line 2319
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpValue:I

    .line 2320
    iput p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpIntensityValue:F

    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .registers 2

    .line 1170
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    return-void
.end method

.method public setModePauseTime(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    .line 1778
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsInMode:Z

    .line 1779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1780
    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1f

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    const-wide/16 v2, 0x3e8

    .line 1783
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1784
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->duration(ILjava/lang/String;)V

    .line 1786
    :cond_1d
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    :cond_1f
    return-void
.end method

.method public setModeResumeTime()V
    .registers 3

    .line 1766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    const/4 v0, 0x0

    .line 1768
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureCountForMode:I

    .line 1769
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureTotalForMode:I

    .line 1771
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsCountForMode:I

    .line 1772
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsTotalForMode:I

    const/4 v0, 0x1

    .line 1774
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsInMode:Z

    return-void
.end method

.method public setMoreModeDisplayType(Ljava/lang/String;)V
    .registers 2

    .line 2268
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoreModeDisplayType:Ljava/lang/String;

    return-void
.end method

.method public setMotionSnapInfo(Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;)V
    .registers 2

    .line 649
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMotionSnapInfo:Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;

    return-void
.end method

.method public setMultiBeautyValue([I)V
    .registers 2

    .line 1889
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    return-void
.end method

.method public setMultiFBMode(Ljava/lang/String;)V
    .registers 2

    .line 1698
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method public setPictureRatioValue(Ljava/lang/String;)V
    .registers 2

    .line 1202
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    return-void
.end method

.method public setPortraitArchVersion(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 1582
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitArchParameterVersion:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public setPortraitFlareValue(Ljava/lang/String;)V
    .registers 2

    .line 1312
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitFlareValue:Ljava/lang/String;

    return-void
.end method

.method public setPortraitModeEnhanceValue(Ljava/lang/String;)V
    .registers 2

    .line 2647
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    return-void
.end method

.method public setSaveUriId(Ljava/lang/String;)V
    .registers 2

    .line 2712
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSaveUriId:Ljava/lang/String;

    return-void
.end method

.method public setScreenBrightness(II)V
    .registers 3

    .line 2671
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightnessMode:I

    .line 2672
    iput p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightness:I

    return-void
.end method

.method public setScreenFlashMode(Z)V
    .registers 2

    .line 2048
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    return-void
.end method

.method public setSelfTimerValue(Ljava/lang/String;)V
    .registers 2

    .line 1304
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    return-void
.end method

.method public setShot2ClickThumbnail(Z)V
    .registers 6

    .line 2406
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 2407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2ClickThumbnail:I

    if-eqz p1, :cond_17

    const/16 p1, 0x2b

    goto :goto_19

    :cond_17
    const/16 p1, 0x22

    .line 2409
    :goto_19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2408
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    :cond_20
    return-void
.end method

.method public setShot2SeeEndTime()V
    .registers 5

    .line 2651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    return-void
.end method

.method public setShoulderSlimDone()V
    .registers 1

    .line 1665
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setShoulderSlim()V

    return-void
.end method

.method public setShutterSoundOptional(I)V
    .registers 2

    .line 1323
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShutterSoundOptional:I

    return-void
.end method

.method public setSkinOptimizationValue(I)V
    .registers 2

    .line 2353
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkinOptimizationValue:I

    return-void
.end method

.method public setSkyType(I)V
    .registers 2

    .line 1924
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    return-void
.end method

.method public setSlimBodyEnable(Z)V
    .registers 2

    .line 1649
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->setEnable(Z)V

    return-void
.end method

.method public setSlimBodyMode(I)V
    .registers 2

    .line 1653
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setMode(I)V

    return-void
.end method

.method public setSlimbodyValue([I)V
    .registers 2

    .line 1885
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    return-void
.end method

.method public setSlowMotionFps(I)V
    .registers 2

    .line 1758
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    return-void
.end method

.method public setStreetPhotoFocalDistanceValue(F)V
    .registers 2

    .line 2700
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStreetPhotoFocalDistanceValue:F

    return-void
.end method

.method public setStreetPhotoStyleValue(Ljava/lang/String;)V
    .registers 2

    .line 2704
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStreetPhotoStyleValue:Ljava/lang/String;

    return-void
.end method

.method public setSuperNightFilterValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1220
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    .line 1221
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "0"

    if-eqz v0, :cond_25

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1223
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1224
    :cond_22
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightFilterTime()V

    .line 1227
    :cond_25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_39

    .line 1228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    .line 1229
    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    :cond_39
    return-void
.end method

.method public setSuperNightLightValue(I)V
    .registers 2

    .line 2676
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightLightValue:I

    return-void
.end method

.method public setTintValue(I)V
    .registers 2

    .line 2315
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTintValue:I

    return-void
.end method

.method public setTotalZoomValue(F)V
    .registers 2

    .line 1198
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTotalZoomValue:F

    return-void
.end method

.method public setTranssionFilterValue(I)V
    .registers 2

    .line 2333
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    return-void
.end method

.method public setTriggerType(Ljava/lang/String;)V
    .registers 2

    .line 1936
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1937
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsTriggerTypeSet:Z

    return-void
.end method

.method public setVideoAsdAlgorithmResult(I)V
    .registers 2

    .line 1186
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoAsdValue:I

    return-void
.end method

.method public setVideoAsdEffect(I)V
    .registers 2

    .line 1190
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoAsdEffect:I

    return-void
.end method

.method public setVideoBeautyValue(Ljava/lang/String;)V
    .registers 2

    .line 1272
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoEffectValue(I)V
    .registers 2

    .line 2337
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEffectValue:I

    return-void
.end method

.method public setVideoEnhanceValue(Ljava/lang/String;)V
    .registers 2

    .line 2361
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoEnhanceYUVEnable(Z)V
    .registers 2

    .line 2383
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceYUVEnable:Z

    return-void
.end method

.method public setVideoFrameValue(I)V
    .registers 2

    .line 2341
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoFrameValue:I

    return-void
.end method

.method public setVideoHDRValue(Ljava/lang/String;)V
    .registers 2

    .line 1284
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoMakeUpValue(IF)V
    .registers 3

    .line 2324
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    .line 2325
    iput p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    return-void
.end method

.method public setVideoPortraitLevelValue(I)V
    .registers 2

    .line 2603
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitLevelValue:I

    return-void
.end method

.method public setVideoPortraitValue(Ljava/lang/String;)V
    .registers 2

    .line 1276
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoPreIspValue(Ljava/lang/String;)V
    .registers 2

    .line 1315
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPreIspValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoRecordingEffectValue(Ljava/lang/String;)V
    .registers 2

    .line 2345
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecordingEffectValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoRecordingEffectZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 2349
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecordingEffectZoomValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoSpotValue(Ljava/lang/String;)V
    .registers 2

    .line 1280
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSpotValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoSuperNightEnable(Z)V
    .registers 2

    .line 2365
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightEnable:Z

    return-void
.end method

.method public setVideoSuperNightYUVEnable(Z)V
    .registers 2

    .line 2374
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightYUVEnable:Z

    return-void
.end method

.method public setVideoTimeLapseDuration(Ljava/lang/String;)V
    .registers 2

    .line 1292
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    return-void
.end method

.method public setVideoTimeLapseRate(Ljava/lang/String;)V
    .registers 2

    .line 1288
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    return-void
.end method

.method public setVolumeShutter(I)V
    .registers 2

    .line 1565
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVolumeShutter:I

    return-void
.end method

.method public setWaistSlimDone()V
    .registers 1

    .line 1669
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setWaistSlim()V

    return-void
.end method

.method public setZoomValue(F)V
    .registers 2

    .line 1194
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:F

    return-void
.end method

.method public sex(I)V
    .registers 2

    .line 1150
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    const/4 p1, 0x1

    .line 1151
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return-void
.end method

.method public startCapture()V
    .registers 3

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForCapture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 799
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 801
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForCapture:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsForCaptureStart:Ljava/util/LinkedList;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startVideo()V
    .registers 4

    .line 1337
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_17

    .line 1338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1339
    const-string v1, "start_trigger_type"

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "video"

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1343
    :cond_17
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTriggerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1345
    const-string v0, "-1"

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    return-void
.end method

.method public superNightAlgorithm(I)V
    .registers 2

    .line 1754
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    return-void
.end method

.method public superNightStable(Ljava/lang/String;)V
    .registers 2

    .line 1750
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    return-void
.end method

.method public thermalWaring(I)V
    .registers 6

    .line 2056
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2057
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2058
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "key_camera_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2059
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v2

    const-string v3, "flash"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2060
    const-string v2, "key_mode"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    const-string v2, "key_temp_warning_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2062
    const-string v2, "thermal_warning"

    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2064
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thermalWaring:modeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mFlash:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " type:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentScreenType(I)V
    .registers 2

    .line 2627
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    return-void
.end method

.method public updateFaceCount(I)V
    .registers 4

    .line 1741
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    .line 1742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    return-void
.end method

.method public updateFps(I)V
    .registers 2

    .line 2108
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFpsValue:I

    .line 2109
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->saveFpsForMode(I)V

    .line 2110
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->saveFpsForCapturing(I)V

    return-void
.end method

.method public updateMaxFaceRatio(F)V
    .registers 2

    .line 1746
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    return-void
.end method

.method public updateTemperatureValue(I)V
    .registers 5

    .line 2071
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTemperatureValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2074
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureValue:I

    .line 2075
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->saveTemperatureForRecording(I)V

    .line 2076
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->saveTemperatureForMode(I)V

    return-void
.end method

.method public video()V
    .registers 7

    .line 1353
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mKeyVideoDuration:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoQuality:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoDuration:J

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public video(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    .line 1349
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public video(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 23

    move-object/from16 v0, p0

    .line 1357
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTemperatureForRecording:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1358
    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->covertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1359
    iput-boolean v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecording:Z

    .line 1360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1361
    invoke-static/range {p2 .. p2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoQuality(Ljava/lang/String;)I

    move-result v5

    .line 1362
    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->checkFaceValid()V

    .line 1363
    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1365
    iget-object v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const/4 v8, 0x3

    if-eqz v7, :cond_281

    .line 1366
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1367
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "key_camera_id"

    invoke-virtual {v7, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v9

    const-string v10, "key_anti_video"

    invoke-virtual {v7, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1369
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoBeautyValue(Ljava/lang/String;)I

    move-result v9

    const-string v10, "key_video_facebeauty"

    invoke-virtual {v7, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1370
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoPortraitValue(Ljava/lang/String;)I

    move-result v9

    const-string v10, "key_video_portrait"

    invoke-virtual {v7, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1371
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSpotValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoSpotValue(Ljava/lang/String;)I

    move-result v9

    const-string v10, "key_video_spot"

    invoke-virtual {v7, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1372
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v9

    const-string v10, "key_video_hdr"

    invoke-virtual {v7, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    const-string v9, "key_video_mode"

    invoke-virtual {v7, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v9, p3

    long-to-int v9, v9

    .line 1374
    div-int/lit16 v9, v9, 0x3e8

    const-string v10, "key_video_duration"

    invoke-virtual {v7, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1375
    const-string v9, "key_video_quality"

    invoke-virtual {v7, v9, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1376
    const-string v5, "key_slowmotion_fps"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1377
    const-string v5, "focus_num"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1378
    const-string v5, "key_ar_voice_id"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1379
    const-string v5, "face_num"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1380
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    const v9, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const-string v9, "face_ratio"

    invoke-virtual {v7, v9, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1381
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v5

    const-string v9, "flash"

    invoke-virtual {v7, v9, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1382
    const-string v5, "key_camera_zoom"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:F

    invoke-virtual {v7, v5, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1383
    const-string v5, "key_total_zoom"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTotalZoomValue:F

    invoke-virtual {v7, v5, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1384
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    const-string v9, "0"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    const-string v5, "auto"

    goto :goto_d1

    :cond_cf
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    :goto_d1
    const-string v10, "key_time_lapse_rate"

    invoke-virtual {v7, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    const-string v5, "unlimited"

    goto :goto_e3

    :cond_e1
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    :goto_e3
    const-string v9, "key_time_lapse_setting_duration"

    invoke-virtual {v7, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v5, "night_hawk"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1387
    const-string v5, "key_video_makeup"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1388
    const-string v5, "key_video_makeup_intensity"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    invoke-virtual {v7, v5, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1389
    const-string v5, "key_transsion_filter"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1390
    const-string v5, "key_video_effect"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEffectValue:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1391
    const-string v5, "key_video_frame"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoFrameValue:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1392
    const-string v5, "key_recording_effect"

    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecordingEffectValue:Ljava/lang/String;

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v5, "key_recording_effect_zoom"

    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecordingEffectZoomValue:Ljava/lang/String;

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v5, "key_video_enhance"

    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v5, "key_video_enhance_yuv"

    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const-string v5, "key_video_portrait_level"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitLevelValue:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1397
    const-string v5, "key_camera_name"

    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v5, "key_vip_value"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVIPCaptureValue:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1399
    const-string v5, "key_screen_type"

    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1400
    const-string v5, "key_auto_watermark"

    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoWaterMarkValue:Ljava/lang/String;

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v5}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object v5

    const-string v9, "key_face_beauty"

    invoke-virtual {v7, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x7

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eqz v5, :cond_1c9

    .line 1404
    array-length v15, v5

    if-ge v15, v14, :cond_177

    .line 1405
    const-string v15, "parameter_1"

    move/from16 v16, v2

    aget v2, v5, v16

    invoke-virtual {v7, v15, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1a4

    :cond_177
    move/from16 v16, v2

    .line 1406
    array-length v2, v5

    if-lt v2, v13, :cond_1a4

    .line 1407
    const-string v2, "parameter_4"

    aget v15, v5, v16

    invoke-virtual {v7, v2, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1408
    iget-boolean v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyV3:Z

    if-eqz v2, :cond_18f

    .line 1409
    const-string v2, "skin_color_card"

    aget v15, v5, v8

    invoke-virtual {v7, v2, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_196

    .line 1411
    :cond_18f
    const-string v2, "parameter_5"

    aget v15, v5, v8

    invoke-virtual {v7, v2, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1413
    :goto_196
    const-string v2, "parameter_6"

    aget v15, v5, v14

    invoke-virtual {v7, v2, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1414
    const-string v2, "parameter_7"

    aget v15, v5, v12

    invoke-virtual {v7, v2, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1416
    :cond_1a4
    :goto_1a4
    array-length v2, v5

    if-lt v2, v11, :cond_1bc

    .line 1417
    const-string v2, "parameter_15"

    aget v15, v5, v10

    invoke-virtual {v7, v2, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1418
    const-string v2, "parameter_16"

    aget v15, v5, v9

    invoke-virtual {v7, v2, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1419
    const-string v2, "parameter_17"

    aget v15, v5, v13

    invoke-virtual {v7, v2, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1421
    :cond_1bc
    array-length v2, v5

    const/16 v15, 0x8

    if-lt v2, v15, :cond_1cb

    .line 1422
    const-string v2, "parameter_18"

    aget v5, v5, v11

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1cb

    :cond_1c9
    move/from16 v16, v2

    .line 1425
    :cond_1cb
    :goto_1cb
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v2, :cond_215

    .line 1427
    array-length v5, v2

    if-ge v5, v8, :cond_1e1

    .line 1428
    const-string v5, "parameter_2"

    aget v9, v2, v16

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1429
    const-string v5, "parameter_3"

    aget v2, v2, v12

    invoke-virtual {v7, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_215

    .line 1430
    :cond_1e1
    array-length v5, v2

    if-lt v5, v11, :cond_215

    .line 1431
    const-string v5, "parameter_8"

    aget v11, v2, v16

    invoke-virtual {v7, v5, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    const-string v5, "parameter_9"

    aget v11, v2, v12

    invoke-virtual {v7, v5, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1433
    const-string v5, "parameter_10"

    aget v11, v2, v14

    invoke-virtual {v7, v5, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1434
    const-string v5, "parameter_11"

    aget v11, v2, v8

    invoke-virtual {v7, v5, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1435
    const-string v5, "parameter_12"

    aget v11, v2, v13

    invoke-virtual {v7, v5, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1436
    const-string v5, "parameter_13"

    aget v10, v2, v10

    invoke-virtual {v7, v5, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1437
    const-string v5, "parameter_14"

    aget v2, v2, v9

    invoke-virtual {v7, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1440
    :cond_215
    :goto_215
    const-string v2, "key_luminance"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1441
    const-string v2, "key_front_dual_flash_color_temp"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1442
    const-string v2, "key_front_dual_flash_strength_mode"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1443
    const-string v2, "key_activity_orientation"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mActivityOrientation:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1444
    const-string v2, "key_screen_brightness_mode"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightnessMode:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1445
    const-string v2, "key_screen_brightness"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightness:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1446
    const-string v2, "key_video_asd"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoAsdValue:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1447
    const-string v2, "key_video_asd_effect"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoAsdEffect:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1448
    const-string v2, "key_hdr_10"

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdr10PlusValue:I

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1449
    const-string v2, "key_video_preisp"

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPreIspValue:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v2, "key_temp_board_values"

    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p5

    .line 1451
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1452
    const-string v1, "key_variable_fps"

    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoVideoFPS:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v1, "key_trigger_type"

    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v1, "media_id"

    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSaveUriId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "video"

    invoke-interface {v1, v2, v7}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1457
    :cond_281
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_67e

    .line 1458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyVideoDuration:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModeName:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAntiVideoValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ---:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVideoBeautyValue:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoBeautyValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVideoPortraitValue:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoPortraitValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVideoSpotValue:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSpotValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSpotValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoSpotValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVideoHDRValue:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quality:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoQuality(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlowMotionFps:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFocusCount:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mArcoreAudioId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoTimeLapseRate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoTimeLapseDuration:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNightHawkDetected:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFlash:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mZoomValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTotalZoomValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTotalZoomValue:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenType:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAutoWaterMarkValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoWaterMarkValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFaceBeauty.getReportValue():"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v5}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1478
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v2, :cond_4ad

    .line 1479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFaceBeautyValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1480
    :cond_4ad
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v2, :cond_4cb

    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlimbodyValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1482
    :cond_4cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_video_enhance:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_video_enhance_yuv:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video time "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLuminanceValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoRecordingEffectValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecordingEffectValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoRecordingEffectZoomValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoRecordingEffectZoomValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontDualFlashColorTemp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontDualFlashStrengthMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoMakeUpValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoMakeUpIntensityValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActivityOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mActivityOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBrightnessMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightnessMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoAsdValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoAsdValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoAsdEffect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoAsdEffect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoPreIspValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPreIspValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoVideoFPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoVideoFPS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHdr10PlusValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdr10PlusValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTriggerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSaveUriId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSaveUriId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1502
    :cond_67e
    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetVideoParameters()V

    return-void
.end method
