.class public Lcom/ss/android/vesdk/TERecorder;
.super Lcom/ss/android/vesdk/TERecorderBase;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;
.implements Lcom/ss/android/vesdk/render/VESurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/TERecorder$TrackStatus;,
        Lcom/ss/android/vesdk/TERecorder$RecordStatus;,
        Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;
    }
.end annotation


# static fields
.field private static FLAG_SET_PREVIEW_RADIO:I = 0x1

.field private static FLAG_SURFACE_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TERecorder"


# instance fields
.field private final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field aecFilterIndex:I

.field private cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

.field private callbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;

.field private mAspectVideoOutputSize:Lcom/ss/android/vesdk/VESize;

.field private mAudioCaptureListener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

.field private mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

.field private mAudioDeviceListener:Lcom/ss/android/vesdk/audio/IAudioDeviceListener;

.field private mBGMTrackIndex:I

.field private mBlurFilterIndex:I

.field private final mBlurFilterLock:Ljava/lang/Object;

.field mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

.field private final mCallbackMapLock:Ljava/lang/Object;

.field private mCamTrack:I

.field private mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

.field mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

.field private mCameraPreviewSize:Lcom/ss/android/vesdk/VESize;

.field private mCountOfLastFragFrames:I

.field private mCreateCameraCondition:Ljava/util/concurrent/locks/Condition;

.field private mCreateCameraLock:Ljava/util/concurrent/locks/Lock;

.field private mCurrentLandscape:I

.field mDeleteLastFragCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field private mDetectListenerFlag:I

.field private mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

.field mEffect:Lcom/ss/android/vesdk/VEEffect;

.field private mErrorMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

.field private mFakeBitmap:Landroid/graphics/Bitmap;

.field private mFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFocusEffFilter:I

.field private mFocusFaceDetectCount:I

.field private mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

.field private mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

.field private final mFuncLock:Ljava/lang/Object;

.field private mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

.field private mHasOpenCamera:Z

.field private mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

.field private mInitDone:Z

.field private mInitDoneCondition:Ljava/util/concurrent/locks/Condition;

.field private mInitDoneLock:Ljava/util/concurrent/locks/Lock;

.field private mIsARCoreSupported:Z

.field private mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMainHandler:Landroid/os/Handler;

.field mMessageClient:Lcom/ss/android/ttve/nativePort/TEMessageClient;

.field private mMicSpeedFilterIndex:I

.field private mMimoFilterIndex:I

.field private mMirrorMode:I

.field private mNeedDelay:Z

.field private mNeedSetFirstFrame:Z

.field private mNeedTwoFrame:Z

.field private mOpenCameraCondition:Ljava/util/concurrent/locks/Condition;

.field private mOpenCameraLock:Ljava/util/concurrent/locks/Lock;

.field private mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

.field private mPaddingBottomInRatio34Offset:F

.field mPauseRenderCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field private mPreviewFakeFrameBlurIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewFakeFrameBlurLock:Ljava/lang/Object;

.field private mRadioMode:I

.field private final mRecStateLisLock:Ljava/lang/Object;

.field private mRecStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

.field mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

.field private mRecorderBusiness:Lcom/ss/android/vesdk/IVERecorderBusiness;

.field private mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

.field mReleaseGPUCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field private mRenderSize:Lcom/ss/android/vesdk/VESize;

.field mRestoreCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field private mRoundFilterIndex:I

.field private mSetPreviewRatioFlag:I

.field private mSilentAudioTrackIndex:I

.field mStartPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field mStartRecordCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field mStartRenderCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field private final mStopCallbackLock:Ljava/lang/Object;

.field mStopPrePlayCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field mStopPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field mStopRecordCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field private mStopRecordWhenStopPreviewing:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceCondition:Ljava/util/concurrent/locks/Condition;

.field private mSurfaceLock:Ljava/util/concurrent/locks/Lock;

.field private mSurfaceSize:Lcom/ss/android/vesdk/VESize;

.field private mTEMemMonitor:Lcom/ss/android/vesdk/TEMemMonitor;

.field private mTranslateYInRatio11OrRound:I

.field private mUseFaceDetectFocus:Z

.field private mUseMusic:Z

.field private mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;

.field mVEAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

.field private mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;

.field private mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

.field mVideoDataClient:Lcom/ss/android/vesdk/video/TEVideoDataInterface;


# direct methods
.method public static synthetic $r8$lambda$21tjqVJbi_bf7pVH5NidyEbFmTA(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 2

    .line 4034
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4034
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setDLEEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4PTef_T8l0aeWVnk95mFAkG7Tuk(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 2

    .line 4453
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4453
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8t_GGR1_pJDLGvI6lKf-FKPCvCg(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 2

    .line 4479
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4479
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Msu5HB4NAfCIwoYC6aRRZcc4Nc(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 2

    .line 3220
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3220
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setEffectBgmEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9eOgWTcrh_yQclXwkrAYA9pUMXo(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 1

    .line 4466
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4466
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->unRegSkeletonDetectCallback()V

    return-void
.end method

.method public static synthetic $r8$lambda$B5-_DJ4o3yJ093hNxG3ErpGMoUc(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V
    .registers 2

    .line 3943
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3943
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I

    return-void
.end method

.method public static synthetic $r8$lambda$BlIeZnk2WfDOi8CrXpqfE88XjWY(Lcom/ss/android/vesdk/TERecorder;I)V
    .registers 2

    .line 3236
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3236
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setForceAlgorithmExecuteCount(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CC8swPcS_3ftc-ynZ3-gj-ZjtEA(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;FF)V
    .registers 4

    .line 4773
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4773
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$CSI9n6uBTma1Lx8rlW22kXnKMQU(Lcom/ss/android/vesdk/TERecorder;IJJLjava/lang/String;)V
    .registers 7

    .line 3769
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3769
    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/vesdk/VEEffect;->sendEffectMsg(IJJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EWmm3x8XJ9v85nBULtk-Gu-UGDA(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V
    .registers 2

    .line 3911
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3911
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    return-void
.end method

.method public static synthetic $r8$lambda$J_hKiRBIcCDkeQOflx1e665XfD0(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V
    .registers 2

    .line 3812
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3812
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    return-void
.end method

.method public static synthetic $r8$lambda$K3nVwN1VIVpKGsJtBCMfFA5FBFY(Lcom/ss/android/vesdk/TERecorder;I)V
    .registers 2

    .line 4415
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4415
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setDetectInterval(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LrKZTtNz6sbd2c9HKPG0_uuonBc(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 2

    .line 4001
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4001
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setBgmMute(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UYvGQk2a7cb3mbuSnYcII8nNUIU(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V
    .registers 2

    .line 3885
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3885
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    return-void
.end method

.method public static synthetic $r8$lambda$V0GpK_u39t74N1a6JRftDYU9-b4(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
    .registers 2

    .line 3780
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3780
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YgcO4mrfqHYVLeebYDqVSZUEqm0(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 4012
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4012
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZjJdDZGiggZHVrMZG95Uw2Hqhxc(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 1

    .line 4492
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4492
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->unRegSmartBeautyCallback()V

    return-void
.end method

.method public static synthetic $r8$lambda$cUr6tzu78_57psB2LLcnkc8nyhU(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V
    .registers 2

    .line 3859
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3859
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    return-void
.end method

.method public static synthetic $r8$lambda$gWrYvSLaKUcFDQVjwtpmJDD7Z9w(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 2

    .line 3386
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3386
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setHandDetectLowpowerEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gyHgqZdQxMlkFLhJx_ijiuwlI8E(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 2

    .line 3990
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3990
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->pauseEffectAudio(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-iG8IjJ90crkbiduLZUb1hlwbQ(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 2

    .line 4615
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4615
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableEffectAmazing(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kBs6wMxXSgIFh52HYsbJpj_Dabs(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V
    .registers 2

    .line 3898
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3898
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    return-void
.end method

.method public static synthetic $r8$lambda$kcDtk2EQuE2YFIxF3lL74JggOOU(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 2

    .line 4261
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4261
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setLargeMattingModelEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$l3a8G-pnjehwuKaRNnu3OlPMdIw(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 4023
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4023
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oT3EaAJzv4wcw1JhO5gOcZr28tE(Lcom/ss/android/vesdk/TERecorder;I)V
    .registers 2

    .line 3672
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3672
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableFaceExtInfo(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s54LsP8slCrCwlFA_k2wdtEMZb8(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEEffectParams;)V
    .registers 2

    .line 4132
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4132
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    return-void
.end method

.method public static synthetic $r8$lambda$sAzPp2OqDpI4tBw-mLaCfcmT-kQ(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 3963
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3963
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tTuRYAMUt1Pjw_rKB4NSSS5Q9AY(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 2

    .line 3683
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3683
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setCameraFirstFrameOptimize(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7GjfjvqgcLqCz4UQzPAo82NUnE(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V
    .registers 2

    .line 3872
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 3872
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    return-void
.end method

.method public static synthetic $r8$lambda$vihkig_I0wwtGtfeBkPgKaYAkUA(Lcom/ss/android/vesdk/TERecorder;[Ljava/lang/String;I)V
    .registers 3

    .line 4090
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 4090
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->removeComposerNodes([Ljava/lang/String;I)I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V
    .registers 8

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;-><init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V

    const/4 p2, 0x0

    .line 148
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 149
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mErrorMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    .line 150
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mStopCallbackLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    .line 167
    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mDetectListenerFlag:I

    .line 170
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    .line 171
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 172
    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mCountOfLastFragFrames:I

    .line 173
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterIndex:I

    .line 174
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mMicSpeedFilterIndex:I

    .line 175
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mMimoFilterIndex:I

    .line 176
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterLock:Ljava/lang/Object;

    .line 177
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 179
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateListeners:Ljava/util/ArrayList;

    .line 181
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateLisLock:Ljava/lang/Object;

    .line 182
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusEffFilter:I

    .line 183
    sget-object v2, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_NORMAL:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 186
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mMainHandler:Landroid/os/Handler;

    .line 187
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordWhenStopPreviewing:Z

    .line 188
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 189
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedDelay:Z

    .line 190
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedTwoFrame:Z

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurIndexList:Ljava/util/List;

    .line 195
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurLock:Ljava/lang/Object;

    .line 197
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSilentAudioTrackIndex:I

    .line 198
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDeviceListener:Lcom/ss/android/vesdk/audio/IAudioDeviceListener;

    .line 200
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mCreateCameraLock:Ljava/util/concurrent/locks/Lock;

    .line 201
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mCreateCameraCondition:Ljava/util/concurrent/locks/Condition;

    .line 202
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenCameraLock:Ljava/util/concurrent/locks/Lock;

    .line 203
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenCameraCondition:Ljava/util/concurrent/locks/Condition;

    .line 204
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mHasOpenCamera:Z

    .line 205
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    .line 206
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceCondition:Ljava/util/concurrent/locks/Condition;

    .line 207
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;

    .line 208
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneCondition:Ljava/util/concurrent/locks/Condition;

    .line 209
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    .line 210
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedSetFirstFrame:Z

    .line 212
    sget-object v2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    .line 213
    new-instance v2, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v2, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    .line 214
    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mTranslateYInRatio11OrRound:I

    const/high16 v2, 0x3e000000    # 0.125f

    .line 215
    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mPaddingBottomInRatio34Offset:F

    .line 216
    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    .line 219
    new-instance v2, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v2, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 220
    sget-object v2, Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;->NO_MIRROR:Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mMirrorMode:I

    .line 223
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRoundFilterIndex:I

    .line 226
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mAspectVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    .line 227
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->callbackMap:Ljava/util/HashMap;

    .line 228
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackMapLock:Ljava/lang/Object;

    .line 247
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mIsARCoreSupported:Z

    .line 248
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 963
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;

    .line 4275
    new-instance v2, Lcom/ss/android/vesdk/TERecorder$19;

    invoke-direct {v2, p0}, Lcom/ss/android/vesdk/TERecorder$19;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    .line 4342
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->aecFilterIndex:I

    .line 4842
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mUseFaceDetectFocus:Z

    const/4 v0, 0x3

    .line 4843
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceDetectCount:I

    .line 4844
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    if-eqz p3, :cond_10b

    .line 253
    invoke-virtual {p3, p0}, Lcom/ss/android/vesdk/render/VERenderView;->addSurfaceCallback(Lcom/ss/android/vesdk/render/VESurfaceCallback;)Z

    .line 255
    :cond_10b
    new-instance p2, Lcom/ss/android/vesdk/TERecorderContext;

    invoke-direct {p2}, Lcom/ss/android/vesdk/TERecorderContext;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    .line 256
    new-instance p2, Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-direct {p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    .line 262
    new-instance p2, Lcom/ss/android/vesdk/camera/TECamera;

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getCameraHandler()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/ss/android/vesdk/camera/TECamera;-><init>(J)V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    .line 263
    invoke-virtual {p2, p0}, Lcom/ss/android/vesdk/camera/TECamera;->setOnCameraInfoListener(Lcom/ss/android/vesdk/camera/TECamera$OnCameraInfoListener;)V

    .line 264
    new-instance p2, Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getVideoDataClientHandler()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;-><init>(J)V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mVideoDataClient:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    .line 265
    new-instance p2, Lcom/ss/android/vesdk/VEEffectImp;

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getEffectInterface()Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/ss/android/vesdk/VEEffectImp;-><init>(Lcom/ss/android/ttve/nativePort/TEEffectInterface;)V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    .line 266
    new-instance p2, Lcom/ss/android/ttve/nativePort/TEMessageClient;

    invoke-direct {p2}, Lcom/ss/android/ttve/nativePort/TEMessageClient;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mMessageClient:Lcom/ss/android/ttve/nativePort/TEMessageClient;

    .line 267
    new-instance p2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    invoke-direct {p2}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    .line 268
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getEnableVBoost()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsEnableVBoost:Z

    if-eqz p2, :cond_168

    .line 270
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance p3, Lcom/ss/android/ttvecamera/systemresmanager/TEVBoostStrategy;

    invoke-direct {p3}, Lcom/ss/android/ttvecamera/systemresmanager/TEVBoostStrategy;-><init>()V

    invoke-virtual {p2, p3}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->setStrategy(Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;)V

    .line 271
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    invoke-virtual {p2, p1}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->initStrategy(Landroid/content/Context;)V

    .line 273
    :cond_168
    new-instance p1, Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-direct {p1}, Lcom/ss/android/ttve/nativePort/TECallbackClient;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    .line 274
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V

    .line 275
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    new-instance p2, Lcom/ss/android/vesdk/TERecorder$1;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/TERecorder$1;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setCommonCallback(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 385
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mMessageClient:Lcom/ss/android/ttve/nativePort/TEMessageClient;

    new-instance p2, Lcom/ss/android/vesdk/TERecorder$2;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/TERecorder$2;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TEMessageClient;->setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 395
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mMessageClient:Lcom/ss/android/ttve/nativePort/TEMessageClient;

    new-instance p2, Lcom/ss/android/vesdk/TERecorder$3;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/TERecorder$3;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TEMessageClient;->setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 407
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mMessageClient:Lcom/ss/android/ttve/nativePort/TEMessageClient;

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setMessageAndCallbackClient(Lcom/ss/android/ttve/nativePort/TEMessageClient;Lcom/ss/android/ttve/nativePort/TECallbackClient;)I

    .line 409
    new-instance p1, Lcom/ss/android/vesdk/TERecorder$4;

    invoke-direct {p1, p0}, Lcom/ss/android/vesdk/TERecorder$4;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDeviceListener:Lcom/ss/android/vesdk/audio/IAudioDeviceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/TERecorder;IIFLjava/lang/String;)V
    .registers 5

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorder;->dispatchStateMsg(IIFLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/TERecorder;)Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordWhenStopPreviewing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/TERecorder;Z)Z
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordWhenStopPreviewing:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/ss/android/vesdk/TERecorder;Z)Z
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Condition;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEDisplaySettings;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ss/android/vesdk/TERecorder;)I
    .registers 1

    .line 134
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->startAudioCaptureIfNeed()I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ss/android/vesdk/TERecorder;II)V
    .registers 3

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->monitorData(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mErrorMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/TERecorder;IILjava/lang/String;)V
    .registers 4

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ss/android/vesdk/TERecorder;)Ljava/lang/Object;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ss/android/vesdk/TERecorder;)Landroid/graphics/Bitmap;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/ss/android/vesdk/TERecorder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/ss/android/vesdk/TERecorder;)Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedTwoFrame:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/ttve/model/VEFrame;ZLcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 4

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorder;->renderPictureFrameWrapper(Lcom/ss/android/ttve/model/VEFrame;ZLcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/ss/android/vesdk/TERecorder;II)Lcom/ss/android/vesdk/VESize;
    .registers 3

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ss/android/vesdk/TERecorder;)Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorder;->mUseFaceDetectFocus:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/ss/android/vesdk/TERecorder;Z)Z
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder;->mUseFaceDetectFocus:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/ss/android/vesdk/TERecorder;)I
    .registers 1

    .line 134
    iget p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceDetectCount:I

    return p0
.end method

.method static synthetic access$2810(Lcom/ss/android/vesdk/TERecorder;)I
    .registers 3

    .line 134
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceDetectCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceDetectCount:I

    return v0
.end method

.method static synthetic access$2900(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEFocusSettings;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/HashMap;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->callbackMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/TERecorder;I)I
    .registers 2

    .line 134
    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCountOfLastFragFrames:I

    return p1
.end method

.method static synthetic access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraPreview;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenCameraLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/android/vesdk/TERecorder;)Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorder;->mHasOpenCamera:Z

    return p0
.end method

.method static synthetic access$900(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/locks/Condition;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenCameraCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private aspectRenderSizeToAnotherSize(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 10

    .line 5234
    new-instance p0, Lcom/ss/android/vesdk/VESize;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    if-eqz p1, :cond_48

    if-nez p2, :cond_b

    goto :goto_48

    .line 5238
    :cond_b
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_48

    .line 5242
    :cond_18
    iget v0, p2, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v3, p2, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float v4, v3

    div-float/2addr v1, v4

    .line 5243
    iget v4, p1, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v5, v4

    mul-float/2addr v5, v2

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float v6, p1

    div-float/2addr v5, v6

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3b

    .line 5245
    iput v4, p0, Lcom/ss/android/vesdk/VESize;->width:I

    mul-int/2addr v4, v3

    int-to-float p1, v4

    mul-float/2addr p1, v2

    .line 5246
    iget p2, p2, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/ss/android/vesdk/VESize;->height:I

    return-object p0

    .line 5248
    :cond_3b
    iput p1, p0, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 5249
    iget p2, p2, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    :cond_48
    :goto_48
    return-object p0
.end method

.method private calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;
    .registers 9

    .line 2881
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p2, p1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 2882
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    .line 2883
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/TERecorder;->aspectRenderSizeToAnotherSize(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    .line 2886
    iget v3, v2, Lcom/ss/android/vesdk/VESize;->width:I

    if-eqz v3, :cond_17

    iget v3, v2, Lcom/ss/android/vesdk/VESize;->height:I

    if-nez v3, :cond_c1

    .line 2887
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "originPicSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", renderSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pictureSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", surfaceSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ratio: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRenderSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz v0, :cond_c1

    .line 2895
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 2896
    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object p2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_b5

    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object p2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_79

    goto :goto_b5

    .line 2899
    :cond_79
    new-instance p1, Lcom/ss/android/vesdk/VESize;

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 2900
    iget p0, p1, Lcom/ss/android/vesdk/VESize;->width:I

    if-eqz p0, :cond_b9

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    if-eqz p1, :cond_b9

    .line 2901
    iget p2, v0, Lcom/ss/android/vesdk/VESize;->width:I

    mul-int v1, p0, p2

    iget v3, v0, Lcom/ss/android/vesdk/VESize;->height:I

    mul-int v4, p1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v1, v4, :cond_a7

    mul-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v5

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-int p0, p0

    .line 2902
    iput p0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    goto :goto_b9

    :cond_a7
    mul-int/2addr p2, p0

    mul-int v1, p1, v3

    if-le p2, v1, :cond_b9

    mul-int/2addr v3, p1

    int-to-float p1, v3

    mul-float/2addr p1, v5

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-int p0, p1

    .line 2904
    iput p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    goto :goto_b9

    .line 2897
    :cond_b5
    :goto_b5
    iget p0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    iput p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2908
    :cond_b9
    :goto_b9
    iget p0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    iput p0, v2, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2909
    iget p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iput p0, v2, Lcom/ss/android/vesdk/VESize;->height:I

    :cond_c1
    return-object v2
.end method

.method private changeSurfaceSync(Landroid/view/Surface;)I
    .registers 2

    .line 1240
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setDisplaySurfaceSync(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method private changeVideoOutputSizeViaInner(II)V
    .registers 6

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 2009
    invoke-static {p1, v0, v1}, Lcom/ss/android/vesdk/util/TEUtils;->getNAlign(IIZ)I

    move-result p1

    .line 2010
    invoke-static {p2, v0, v1}, Lcom/ss/android/vesdk/util/TEUtils;->getNAlign(IIZ)I

    move-result p2

    .line 2011
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(ILcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 2012
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 2013
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 2014
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 2015
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeVideoOutputSizeViaInner: width="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TERecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkMockAudioTrack(ZZ)V
    .registers 8

    .line 617
    const-string v0, "TERecorder"

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_a

    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSilentAudioTrackIndex:I

    if-ne p1, v2, :cond_10

    :cond_a
    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSilentAudioTrackIndex:I

    if-eq p1, v2, :cond_1d

    if-eqz p2, :cond_1d

    .line 618
    :cond_10
    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSilentAudioTrackIndex:I

    invoke-virtual {p0, v1, p1}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(II)I

    .line 619
    const-string p1, "remove empty track"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mSilentAudioTrackIndex:I

    return-void

    :cond_1d
    if-nez p2, :cond_64

    if-ne p1, v2, :cond_64

    .line 625
    new-instance p1, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 626
    const-string p2, "empty_path"

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p2

    const/4 v2, 0x0

    .line 627
    invoke-virtual {p2, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p2

    const v3, 0x7fffffff

    .line 628
    invoke-virtual {p2, v3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 629
    invoke-virtual {p2, v3, v4}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p2

    .line 630
    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    .line 631
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSilentAudioTrackIndex:I

    .line 632
    invoke-virtual {p0, p1, v1, v1, v2}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add empty track, track index:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder;->mSilentAudioTrackIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-void
.end method

.method private closeCamera()V
    .registers 1

    .line 958
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_7

    .line 959
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->close()I

    :cond_7
    return-void
.end method

.method private createAudioCaptureIfNeed()V
    .registers 3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create audio capture VERecordMode is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->isEnableAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz v0, :cond_36

    :cond_26
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    if-eq v0, v1, :cond_36

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-eq v0, v1, :cond_36

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->DUET_KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_35

    goto :goto_36

    :cond_35
    return-void

    .line 428
    :cond_36
    :goto_36
    new-instance v0, Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAudioCapture;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    .line 429
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    .line 430
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VEAudioCapture;->addCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)Z

    .line 431
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDeviceListener:Lcom/ss/android/vesdk/audio/IAudioDeviceListener;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/VEAudioCapture;->setAudioDeviceChangeListener(Lcom/ss/android/vesdk/audio/IAudioDeviceListener;)V

    return-void
.end method

.method private dispatchStateMsg(IIFLjava/lang/String;)V
    .registers 7

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_113

    const/16 p3, 0x3e9

    if-eq p1, p3, :cond_113

    .line 538
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_DUET_DST_SIZE:I

    if-eq p1, p3, :cond_113

    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_MULTIPLE_TRACK_EOF:I

    if-ne p1, p3, :cond_12

    goto/16 :goto_113

    .line 542
    :cond_12
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_ENGINE_START:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ne p1, p3, :cond_25

    .line 543
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    .line 544
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStartPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p1, :cond_10c

    .line 545
    invoke-interface {p1, v1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 546
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mStartPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    return-void

    .line 548
    :cond_25
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_VIDEO_HW_ENCODER_INIT:I

    if-ne p1, p3, :cond_2d

    .line 549
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void

    .line 550
    :cond_2d
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_ENGINE_STOP:I

    if-ne p1, p3, :cond_3e

    .line 551
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStopPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p1, :cond_3a

    .line 552
    invoke-interface {p1, v1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 553
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mStopPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 555
    :cond_3a
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return-void

    .line 556
    :cond_3e
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_DELETE_LAST_FRAG_DONE_NOTIFY:I

    if-ne p1, p3, :cond_4a

    .line 557
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mDeleteLastFragCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_10c

    .line 558
    invoke-interface {p0, p2}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    return-void

    .line 560
    :cond_4a
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_CLEAR_ALL_FRAG_DONE_NOTIFY:I

    if-ne p1, p3, :cond_50

    goto/16 :goto_10c

    .line 562
    :cond_50
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_PREVIEW_DISPLAY_CHANGED:I

    if-ne p1, p3, :cond_5a

    const/16 p1, 0x41d

    .line 563
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void

    .line 564
    :cond_5a
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_CHANGE_SURFACE:I

    if-ne p1, p3, :cond_64

    const/16 p1, 0x42f

    .line 565
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void

    .line 566
    :cond_64
    sget p3, Lcom/ss/android/vesdk/VEInfo;->INFO_TITAN_START_RECORD_FIRST_FRAME:I

    if-ne p1, p3, :cond_6e

    const/16 p1, 0x438

    .line 567
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void

    .line 568
    :cond_6e
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_RECORD_REACH_MAX_DURATION:I

    if-ne p1, p3, :cond_78

    const/16 p1, 0x41e

    .line 569
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void

    :cond_78
    const/16 p3, 0x3fe

    if-ne p1, p3, :cond_7e

    goto/16 :goto_10c

    :cond_7e
    const/16 p3, 0x425

    if-ne p1, p3, :cond_84

    goto/16 :goto_10c

    :cond_84
    const/16 p3, 0x41a

    if-ne p1, p3, :cond_94

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 576
    invoke-direct {p0, p3, p2, p1}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void

    .line 577
    :cond_94
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_MIC_AUDIO_DELAY:I

    if-eq p1, p3, :cond_10d

    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_MIC_AUDIO_DELAY_RET:I

    if-ne p1, p3, :cond_9e

    goto/16 :goto_10d

    .line 579
    :cond_9e
    sget p3, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_PREVIEW_FIRST_FAKE_FRAME:I

    if-ne p1, p3, :cond_a6

    .line 580
    invoke-direct {p0, p3, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void

    :cond_a6
    const/16 p3, 0x410

    if-ne p1, p3, :cond_ad

    .line 582
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagCount:I

    return-void

    :cond_ad
    const/16 p3, 0x411

    if-ne p1, p3, :cond_b4

    .line 584
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagMaxDuration:I

    return-void

    :cond_b4
    const/16 p3, 0x413

    if-ne p1, p3, :cond_bb

    .line 586
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagTotalDuration:I

    return-void

    :cond_bb
    const/16 p3, 0x414

    if-ne p1, p3, :cond_c2

    .line 588
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagCount:I

    return-void

    :cond_c2
    const/16 p3, 0x415

    if-ne p1, p3, :cond_c9

    .line 590
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagMaxDuration:I

    return-void

    :cond_c9
    const/16 p3, 0x416

    if-ne p1, p3, :cond_d0

    .line 592
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagTotalDuration:I

    return-void

    :cond_d0
    const p3, 0x49742400    # 1000000.0f

    const/16 p4, 0x443

    if-ne p1, p4, :cond_dc

    int-to-float p1, p2

    div-float/2addr p3, p1

    .line 594
    iput p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderFps:F

    return-void

    :cond_dc
    if-ne p1, p4, :cond_e3

    int-to-float p1, p2

    div-float/2addr p3, p1

    .line 596
    iput p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordWriteFps:F

    return-void

    .line 597
    :cond_e3
    sget p2, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_ENGINE_START_RENDER:I

    if-ne p1, p2, :cond_f1

    .line 598
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStartRenderCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p1, :cond_10c

    .line 599
    invoke-interface {p1, v1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 600
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mStartRenderCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    return-void

    .line 602
    :cond_f1
    sget p2, Lcom/ss/android/vesdk/VEInfo;->TE_MSG_MEDIA_ENGINE_RELEASE_GPU_RESOURCE:I

    if-ne p1, p2, :cond_ff

    .line 603
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mReleaseGPUCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p1, :cond_10c

    .line 604
    invoke-interface {p1, v1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 605
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mReleaseGPUCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    return-void

    .line 607
    :cond_ff
    sget p2, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_ENGINE_PAUSE_RENDER:I

    if-ne p1, p2, :cond_10c

    .line 608
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mPauseRenderCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p1, :cond_10c

    .line 609
    invoke-interface {p1, v1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 610
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mPauseRenderCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    :cond_10c
    :goto_10c
    return-void

    .line 578
    :cond_10d
    :goto_10d
    const-string p3, ""

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void

    .line 541
    :cond_113
    :goto_113
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    return-void
.end method

.method private doNotStopPrePlayVideo()Z
    .registers 1

    .line 2280
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->isVideoBgMode()Z

    move-result p0

    return p0
.end method

.method private focusRunEffect()V
    .registers 7

    .line 473
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEFocusRunEffectFilter;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEFocusRunEffectFilter;-><init>()V

    .line 474
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusEffFilter:I

    if-ltz v0, :cond_13

    .line 475
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusEffFilter:I

    invoke-virtual {v0, p0, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    return-void

    .line 477
    :cond_13
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusEffFilter:I

    return-void
.end method

.method private initAudioCaptureInNeed()I
    .registers 7

    .line 444
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_sys_karaoke"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 445
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    const-string v3, "TERecorder"

    if-eqz v1, :cond_55

    .line 446
    new-instance v1, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;-><init>()V

    const/4 v4, 0x1

    .line 447
    invoke-virtual {v1, v4}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setAudioDataStore(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v1

    .line 448
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->isKaraokeEnv()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setAudioCaptureLowLatency(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v1

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableEarBack:Z

    if-eqz v0, :cond_2e

    move v2, v4

    .line 449
    :cond_2e
    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->enableSysKaraoke(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->build()Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVEAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 451
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEAudioCapture;->init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I

    move-result p0

    if-eqz p0, :cond_54

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio capture init failed %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    return p0

    .line 457
    :cond_55
    const-string p0, "audio capture is null"

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private initEngineMonitorReport()I
    .registers 3

    .line 4599
    new-instance v0, Lcom/ss/android/vesdk/TEMemMonitor;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/TEMemMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mTEMemMonitor:Lcom/ss/android/vesdk/TEMemMonitor;

    .line 4600
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {v1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setPerformanceMonitorCallbackClient(Lcom/ss/android/vesdk/TEMemMonitor;)I

    .line 4601
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->enableEngineMonitorReport(Z)I

    move-result p0

    return p0
.end method

.method private initInternalRecorder()I
    .registers 6

    .line 743
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    if-eqz v0, :cond_2c

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initInternalRecorder called in a invalid state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "should be : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TERecorder"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 751
    :cond_2c
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->createAudioCaptureIfNeed()V

    .line 752
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/vesdk/TERecorderContext;->renderSize:Lcom/ss/android/vesdk/VESize;

    .line 753
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnableRenderLayer()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/vesdk/TERecorderContext;->enableRenderLayer:Z

    .line 754
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnableModelHotUpdate()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/vesdk/TERecorderContext;->enableModelHotUpdate:Z

    .line 755
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnablePassEffectWhenNoEffectFilter()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/vesdk/TERecorderContext;->enablePassEffectWhenNoEffect:Z

    .line 756
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->init(Lcom/ss/android/vesdk/TERecorderContext;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;)I

    move-result v0

    if-nez v0, :cond_6c

    .line 758
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    .line 761
    :cond_6c
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnablePassEffectWhenNoEffectFilter()Z

    move-result v1

    if-nez v1, :cond_77

    .line 762
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->focusRunEffect()V

    .line 764
    :cond_77
    new-instance v1, Lcom/ss/android/vesdk/VEARCoreParam;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEARCoreParam;-><init>()V

    .line 765
    iget-boolean v2, p0, Lcom/ss/android/vesdk/TERecorder;->mIsARCoreSupported:Z

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEARCoreParam;->setEnableARCore(Z)V

    .line 766
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ss/android/vesdk/VEEffect;->setARCoreParam(Lcom/ss/android/vesdk/VEARCoreParam;)V

    .line 768
    iget-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    if-nez v1, :cond_97

    .line 769
    new-instance v1, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;-><init>()V

    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    .line 771
    :cond_97
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    if-eqz v2, :cond_a2

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->getHandle()J

    move-result-wide v2

    goto :goto_a4

    :cond_a2
    const-wide/16 v2, 0x0

    :goto_a4
    const-string v4, "AudioDataInterface"

    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setLong(Ljava/lang/String;J)I

    .line 772
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->initEngineMonitorReport()I

    return v0
.end method

.method private isKaraokeEnv()Z
    .registers 2

    .line 5266
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->DUET_KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private isVideoBgMode()Z
    .registers 2

    .line 2284
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2285
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p0, :cond_f

    instance-of p0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    .line 2286
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method private monitorData(II)V
    .registers 6

    .line 487
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_ENGINE_INIT:I

    const/4 v0, 0x0

    if-ne p1, p0, :cond_c

    .line 488
    const-string p0, "te_record_preview_init_ret"

    int-to-long p1, p2

    invoke-static {v0, p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void

    .line 489
    :cond_c
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_ENGINE_START:I

    if-ne p1, p0, :cond_17

    .line 490
    const-string p0, "te_record_start_preview_ret"

    int-to-long p1, p2

    invoke-static {v0, p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void

    .line 491
    :cond_17
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_START_RECORD:I

    if-ne p1, p0, :cond_22

    .line 492
    const-string p0, "te_record_start_record_ret"

    int-to-long p1, p2

    invoke-static {v0, p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void

    .line 493
    :cond_22
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_VIDEO_HW_ENCODER_INIT:I

    if-ne p1, p0, :cond_2d

    .line 494
    const-string p0, "te_record_hard_encode_init_ret"

    int-to-long p1, p2

    invoke-static {v0, p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void

    .line 495
    :cond_2d
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_ERROR_RECORD_AUDIO_INPUT_START_RET:I

    if-ne p1, p0, :cond_3e

    if-nez p2, :cond_36

    const-wide/16 p0, 0x3

    goto :goto_38

    :cond_36
    const-wide/16 p0, -0x25b

    .line 496
    :goto_38
    const-string p2, "te_record_audio_start_record_ret"

    invoke-static {v0, p2, p0, p1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void

    .line 497
    :cond_3e
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_ERROR_RECORD_AUDIO_STREAM_OUTPUT_START_RET:I

    if-ne p1, p0, :cond_49

    .line 498
    const-string p0, "te_record_audio_start_play_ret"

    int-to-long p1, p2

    invoke-static {v0, p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void

    .line 499
    :cond_49
    sget p0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_PREVIEW_FIRST_FRAME_SCREEN:I

    if-ne p1, p0, :cond_83

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    if-nez p2, :cond_77

    .line 502
    sget-wide v1, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeCameraOpenTimeStamp:J

    sub-long v1, p0, v1

    long-to-double v1, v1

    const-string p2, "te_preview_first_frame_screen_time"

    invoke-static {v0, p2, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera Preview First Frame Cost: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeCameraOpenTimeStamp:J

    sub-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TERecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_77
    const/4 v1, 0x1

    if-ne p2, v1, :cond_83

    .line 506
    sget-wide v1, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeSwitchCameraTimeStamp:J

    sub-long/2addr p0, v1

    long-to-double p0, p0

    const-string p2, "te_preview_switch_camera_screen_time"

    invoke-static {v0, p2, p0, p1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    :cond_83
    return-void
.end method

.method private notifyRecState(IILjava/lang/String;)V
    .registers 10

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateLisLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_8
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 516
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_5f

    .line 518
    :cond_1a
    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_18

    const/4 p0, 0x0

    move v1, p0

    .line 519
    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5e

    .line 520
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    .line 521
    instance-of v3, v2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v3, :cond_5b

    .line 522
    check-cast v2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    .line 523
    sget v3, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_ENGINE_START:I

    if-ne v3, p1, :cond_3f

    .line 524
    invoke-interface {v2, p2, p3}, Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;->onNativeInit(ILjava/lang/String;)V

    .line 525
    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    const/16 v3, 0x3ea

    .line 526
    invoke-interface {v2, v3, p2, p3}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    goto :goto_5b

    .line 527
    :cond_3f
    sget v3, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_VIDEO_HW_ENCODER_INIT:I

    if-ne v3, p1, :cond_58

    const/4 v3, 0x1

    if-nez p2, :cond_48

    move v4, v3

    goto :goto_49

    :cond_48
    move v4, p0

    .line 528
    :goto_49
    invoke-interface {v2, v4}, Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;->onHardEncoderInit(Z)V

    if-nez p2, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v3, -0x1

    .line 529
    :goto_50
    const-string v4, "Init HardEncode"

    const/16 v5, 0x3eb

    invoke-interface {v2, v5, v3, v4}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    goto :goto_5b

    .line 531
    :cond_58
    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    :cond_5b
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_5e
    return-void

    .line 518
    :goto_5f
    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_18

    throw p0
.end method

.method private openCamera()V
    .registers 2

    .line 951
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz v0, :cond_a

    .line 952
    invoke-interface {v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->open()I

    const/4 v0, 0x1

    .line 953
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mHasOpenCamera:Z

    :cond_a
    return-void
.end method

.method private postOnRenderThread(IIF)I
    .registers 4

    .line 4440
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->postOnRenderThread(IIF)I

    move-result p0

    return p0
.end method

.method private releaseInternalRecorder()V
    .registers 3

    .line 777
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    if-eqz v0, :cond_27

    .line 778
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    .line 779
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->release()I

    move-result p0

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseInternalRecorder ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TERecorder"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method private renderPictureFrameWrapper(Lcom/ss/android/ttve/model/VEFrame;ZLcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 13

    .line 2916
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/TERecorder;->calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 2917
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v2, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-interface {p3, v1, v2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderPending(II)V

    .line 2918
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->isSyncCapture()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2919
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v2, v0, Lcom/ss/android/vesdk/VESize;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_25
    move-object v5, v1

    goto :goto_29

    :cond_27
    const/4 v1, 0x0

    goto :goto_25

    .line 2920
    :goto_29
    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->NO_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    .line 2921
    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mMirrorMode:I

    if-nez v2, :cond_30

    goto :goto_3b

    :cond_30
    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    .line 2924
    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->X_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    goto :goto_3b

    :cond_36
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    .line 2926
    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->Y_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    .line 2928
    :cond_3b
    :goto_3b
    new-instance v2, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->RENDER_PICTURE_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 2929
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v2

    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->FULL_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    .line 2930
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v2

    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 2931
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v2

    .line 2932
    invoke-virtual {v2, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2933
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setMirrorMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    new-instance v2, Lcom/ss/android/vesdk/TERecorder$15;

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/ss/android/vesdk/TERecorder$15;-><init>(Lcom/ss/android/vesdk/TERecorder;ZLandroid/graphics/Bitmap;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;Lcom/ss/android/ttve/model/VEFrame;Z)V

    .line 2934
    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    .line 2961
    invoke-virtual {p0, v5}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDirectBitmap(Landroid/graphics/Bitmap;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    .line 2962
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object p0

    .line 2963
    invoke-virtual {v3, v7, p0}, Lcom/ss/android/vesdk/TERecorder;->renderFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .registers 3

    .line 1229
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz v0, :cond_16

    .line 1230
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1231
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSurface:Landroid/view/Surface;

    .line 1232
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1233
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 1235
    :cond_16
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private startAudioCaptureIfNeed()I
    .registers 3

    .line 463
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->initAudioCaptureInNeed()I

    move-result v0

    if-nez v0, :cond_11

    .line 465
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-eqz v1, :cond_11

    .line 466
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v1, p0}, Lcom/ss/android/vesdk/VEAudioCapture;->start(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0

    :cond_11
    return v0
.end method

.method private startLumaDetectEC()V
    .registers 4

    .line 977
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;

    if-nez v0, :cond_5

    goto :goto_44

    .line 980
    :cond_5
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_luma_detect_ec"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 981
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_44

    .line 982
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 983
    new-instance v0, Lcom/ss/android/vesdk/TERecorder$5;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/TERecorder$5;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    .line 1029
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    const-string v2, "iso"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    const-string v2, "exposuretime"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;

    invoke-interface {p0, v1, v0}, Lcom/ss/android/vesdk/camera/ICameraPreview;->setListenerFromRecorder(Ljava/util/ArrayList;Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;)V

    :cond_44
    :goto_44
    return-void
.end method

.method private startRecord(Ljava/lang/String;Ljava/lang/String;FZ)I
    .registers 16

    .line 1264
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->recordDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1265
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1267
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_23

    const/16 p0, -0x72

    return p0

    .line 1270
    :cond_23
    const-string v0, "TERecorder"

    const-string v1, "Record dir doesn\'t exists, create it successfully."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    if-eqz p4, :cond_5a

    .line 1274
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iput-object p1, p2, Lcom/ss/android/vesdk/TERecorderContext;->videoPath:Ljava/lang/String;

    .line 1275
    iput-object p1, p2, Lcom/ss/android/vesdk/TERecorderContext;->audioPath:Ljava/lang/String;

    .line 1276
    iget-object p2, p2, Lcom/ss/android/vesdk/TERecorderContext;->videoPathQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object p2, p2, Lcom/ss/android/vesdk/TERecorderContext;->audioPathQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4b

    .line 1277
    :cond_44
    const-string p2, "TERecorder"

    const-string p4, "add video path or audio error."

    invoke-static {p2, p4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_4b
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p4, "VideoPath"

    invoke-virtual {p2, p4, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p4, "AudioPath"

    invoke-virtual {p2, p4, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 1282
    :cond_5a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_93

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_93

    .line 1283
    iget-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iput-object p1, p4, Lcom/ss/android/vesdk/TERecorderContext;->videoPath:Ljava/lang/String;

    .line 1284
    iput-object p2, p4, Lcom/ss/android/vesdk/TERecorderContext;->audioPath:Ljava/lang/String;

    .line 1285
    iget-object p4, p4, Lcom/ss/android/vesdk/TERecorderContext;->videoPathQueue:Ljava/util/Queue;

    invoke-interface {p4, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7e

    iget-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object p4, p4, Lcom/ss/android/vesdk/TERecorderContext;->audioPathQueue:Ljava/util/Queue;

    invoke-interface {p4, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_85

    .line 1286
    :cond_7e
    const-string p4, "TERecorder"

    const-string v0, "add video path or audio error."

    invoke-static {p4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_85
    iget-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "VideoPath"

    invoke-virtual {p4, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p4, "AudioPath"

    invoke-virtual {p1, p4, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_93
    :goto_93
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1293
    :try_start_96
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p2, :cond_b3

    instance-of p4, p2, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    if-eqz p4, :cond_b3

    .line 1294
    move-object v3, p2

    check-cast v3, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mBgmPath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimIn:J

    iget-wide v7, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimOut:J

    iget v9, p0, Lcom/ss/android/vesdk/TERecorderBase;->mBgmType:I

    iget v10, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    invoke-virtual/range {v3 .. v10}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->setRecordBGM(Ljava/lang/String;JJII)I

    goto :goto_b3

    :catchall_af
    move-exception v0

    move-object p0, v0

    goto/16 :goto_152

    .line 1296
    :cond_b3
    :goto_b3
    monitor-exit p1
    :try_end_b4
    .catchall {:try_start_96 .. :try_end_b4} :catchall_af

    .line 1298
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->isKaraokeEnv()Z

    move-result p1

    if-eqz p1, :cond_c9

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    if-eqz p1, :cond_c9

    .line 1299
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->fromCaptureSettings(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1300
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p4, "CaptureSettings"

    invoke-virtual {p2, p4, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1303
    :cond_c9
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz p1, :cond_df

    .line 1304
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p2, "AudioDataInterface"

    iget-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    if-eqz p4, :cond_da

    invoke-virtual {p4}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->getHandle()J

    move-result-wide v0

    goto :goto_dc

    :cond_da
    const-wide/16 v0, 0x0

    :goto_dc
    invoke-virtual {p1, p2, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setLong(Ljava/lang/String;J)I

    .line 1307
    :cond_df
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableAudioGraphRefactor()Z

    move-result p1

    if-eqz p1, :cond_10a

    .line 1308
    new-instance v6, Lcom/ss/android/vesdk/filterparam/VEAudioSpeedFilterParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/filterparam/VEAudioSpeedFilterParam;-><init>()V

    .line 1309
    iput p3, v6, Lcom/ss/android/vesdk/filterparam/VEAudioSpeedFilterParam;->speed:F

    .line 1310
    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mMicSpeedFilterIndex:I

    if-gez p1, :cond_101

    .line 1311
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mMicSpeedFilterIndex:I

    goto :goto_10a

    .line 1313
    :cond_101
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p1

    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->mMicSpeedFilterIndex:I

    invoke-virtual {p1, p2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 1317
    :cond_10a
    :goto_10a
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1318
    :try_start_10d
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p1, :cond_11c

    instance-of p1, p1, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    if-eqz p1, :cond_11c

    .line 1319
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->freezeAudioClock()V

    goto :goto_11c

    :catchall_119
    move-exception v0

    move-object p0, v0

    goto :goto_150

    .line 1321
    :cond_11c
    :goto_11c
    monitor-exit p2
    :try_end_11d
    .catchall {:try_start_10d .. :try_end_11d} :catchall_119

    .line 1322
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p1, p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->startRecord(F)I

    move-result p1

    .line 1324
    iget-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p4

    if-nez p1, :cond_133

    .line 1325
    :try_start_128
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p2, :cond_133

    .line 1326
    invoke-interface {p2, p3}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->startRecord(F)V

    goto :goto_133

    :catchall_130
    move-exception v0

    move-object p0, v0

    goto :goto_14e

    .line 1328
    :cond_133
    :goto_133
    monitor-exit p4
    :try_end_134
    .catchall {:try_start_128 .. :try_end_134} :catchall_130

    .line 1329
    const-string p2, "te_titan_engine"

    const-wide/16 p3, 0x1

    invoke-static {v2, p2, p3, p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1330
    const-string p2, "te_record_type"

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-long p3, p0

    invoke-static {v2, p2, p3, p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1331
    const-string p0, "te_record_start_record_ret"

    int-to-long p2, p1

    invoke-static {v2, p0, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return p1

    .line 1328
    :goto_14e
    :try_start_14e
    monitor-exit p4
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_130

    throw p0

    .line 1321
    :goto_150
    :try_start_150
    monitor-exit p2
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_119

    throw p0

    .line 1296
    :goto_152
    :try_start_152
    monitor-exit p1
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_af

    throw p0
.end method


# virtual methods
.method public addDataSource(Lcom/ss/android/vesdk/VEDataSource;)V
    .registers 3

    .line 5376
    instance-of v0, p1, Lcom/ss/android/vesdk/VEVideoDataSource;

    if-eqz v0, :cond_13

    .line 5377
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mVideoDataClient:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    check-cast p1, Lcom/ss/android/vesdk/VEVideoDataSource;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoDataSource;->getVideoCapture()Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;->getCapturePipeline()Lcom/ss/android/vesdk/frame/TECapturePipeline;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->setCapturePipeline(Lcom/ss/android/vesdk/frame/TECapturePipeline;)V

    :cond_13
    return-void
.end method

.method public addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 5

    .line 3961
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3962
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda6;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3966
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 5360
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 5361
    const-string v1, "MetadataKey"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 5362
    const-string p1, "MetadataValue"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 5363
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "AddMetaData"

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public addRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V
    .registers 3

    .line 4701
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateLisLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4702
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4703
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addSticker(Landroid/graphics/Bitmap;II)V
    .registers 4

    return-void
.end method

.method public addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I
    .registers 4

    const/4 v0, 0x0

    .line 2158
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p0

    return p0
.end method

.method public addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I
    .registers 5

    .line 2172
    invoke-static {p2}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/ttve/model/VETrackParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 2173
    const-string v0, "TrackType"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2174
    const-string p1, "UpdateTimeline"

    invoke-virtual {p2, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 2175
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "AddTrack"

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public afterSurfaceDestroyed()V
    .registers 1

    return-void
.end method

.method public alignTo(IIII)I
    .registers 5

    .line 4687
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->alignTo(IIII)I

    move-result p0

    return p0
.end method

.method public animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 4142
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public animateImagesToPreview(Ljava/util/List;Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/VEFrame;",
            ">;)I"
        }
    .end annotation

    .line 4270
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->animateImagesToPreview(Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public appendComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 4083
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->appendComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public attachCameraCapture(Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 3

    .line 933
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz v0, :cond_16

    .line 934
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCreateCameraLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 935
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    .line 936
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCreateCameraCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 937
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCreateCameraLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 939
    :cond_16
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-void
.end method

.method public capture(IIIZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 8

    .line 2874
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_5

    return-void

    .line 2875
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No Camera capture to capture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public capture(IZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 6

    .line 2968
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p1, :cond_d

    .line 2972
    new-instance p4, Lcom/ss/android/vesdk/TERecorder$16;

    invoke-direct {p4, p0, p5, p2, p3}, Lcom/ss/android/vesdk/TERecorder$16;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;ZZ)V

    invoke-interface {p1, p4}, Lcom/ss/android/vesdk/camera/ICameraCapture;->takePicture(Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;)I

    return-void

    .line 2969
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No Camera capture to capture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public captureNightEnhance(Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 13

    .line 3022
    new-instance v0, Lcom/ss/android/ttvecamera/model/BurstRequest;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/model/BurstRequest;-><init>()V

    .line 3023
    iget v1, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->burstType:I

    iput v1, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->burstType:I

    .line 3024
    iget-object v1, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->aeExposureValues:Ljava/util/List;

    iput-object v1, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->aeExposureValues:Ljava/util/List;

    .line 3025
    iget v2, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->sourceWidth:I

    iput v2, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageWidth:I

    .line 3026
    iget v2, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->sourceHeight:I

    iput v2, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageHeight:I

    .line 3027
    iget v2, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->frameInterval:I

    iput v2, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->frameInterval:I

    .line 3028
    iget-boolean v2, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->canStopRepeating:Z

    iput-boolean v2, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->canStopRepeating:Z

    .line 3029
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 3030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3032
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    new-instance v3, Lcom/ss/android/vesdk/TERecorder$17;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/ss/android/vesdk/TERecorder$17;-><init>(Lcom/ss/android/vesdk/TERecorder;ILcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;J)V

    invoke-interface {v1, v3, v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->captureBurst(Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I

    return-void
.end method

.method public changeCamera()V
    .registers 2

    .line 4911
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 4912
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchCamera()I

    return-void

    .line 4914
    :cond_8
    const-string p0, "TERecorder"

    const-string v0, "No Camera capture to changeCamera"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)V
    .registers 3

    .line 4920
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 4921
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I

    return-void

    .line 4923
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Camera capture to changeCamera("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TERecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2321
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2322
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p0, :cond_13

    instance-of v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    if-eqz v1, :cond_13

    .line 2323
    check-cast p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->changeVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 2325
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z
    .registers 2

    .line 1947
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1950
    :cond_6
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z

    move-result p0

    return p0
.end method

.method public changeRecordMode(Lcom/ss/android/vesdk/VERecordMode;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1618
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, p1, :cond_5

    return-void

    .line 1619
    :cond_5
    const-string v0, "TERecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRecordMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    .line 1621
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1622
    :try_start_20
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    if-eqz v0, :cond_9b

    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->isKaraokeEnv()Z

    move-result v0

    if-nez v0, :cond_9b

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getRecordStatus()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->RUNNING:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_9b

    .line 1623
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz v0, :cond_44

    .line 1624
    invoke-interface {v0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onDestroy()V

    const/4 v0, 0x0

    .line 1625
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_44

    :catchall_41
    move-exception p0

    goto/16 :goto_f0

    .line 1627
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_7f

    .line 1628
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getEnableV2()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1629
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_75

    .line 1631
    :cond_64
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 1633
    :goto_75
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    invoke-interface {v0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    .line 1634
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_DUET:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    goto :goto_9b

    .line 1635
    :cond_7f
    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_9b

    .line 1636
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEReactProxy;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ss/android/vesdk/proxy/TEReactProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEReactSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 1637
    invoke-interface {v0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    .line 1638
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_REACTION:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 1641
    :cond_9b
    :goto_9b
    monitor-exit p1
    :try_end_9c
    .catchall {:try_start_20 .. :try_end_9c} :catchall_41

    .line 1644
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->DUET_KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_ae

    .line 1645
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iput-boolean v1, p1, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioGraphRefactor:Z

    .line 1646
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "EnableAudioGraphRefactor"

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 1649
    :cond_ae
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "Karaoke"

    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->isKaraokeEnv()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 1650
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "PureAudio"

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v3, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_cb

    sget-object v3, Lcom/ss/android/vesdk/VERecordMode;->AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v2, v3, :cond_c9

    goto :goto_cb

    :cond_c9
    move v2, v4

    goto :goto_cc

    :cond_cb
    :goto_cb
    move v2, v1

    :goto_cc
    invoke-virtual {p1, v0, v2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 1651
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "FocusSingleAudioTrack"

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v3, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    if-eq v2, v3, :cond_df

    sget-object v3, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v2, v3, :cond_de

    goto :goto_df

    :cond_de
    move v1, v4

    :cond_df
    :goto_df
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 1652
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "VERecordMode"

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setInt(Ljava/lang/String;I)I

    return-void

    .line 1641
    :goto_f0
    :try_start_f0
    monitor-exit p1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_41

    throw p0
.end method

.method public changeRenderSize(Lcom/ss/android/vesdk/VESize;)I
    .registers 6

    .line 1955
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCurrentLandscape:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_14

    .line 1956
    :cond_a
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    iget v3, p1, Lcom/ss/android/vesdk/VESize;->height:I

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-direct {v0, v3, p1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    move-object p1, v0

    .line 1958
    :cond_14
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iput-object p1, v0, Lcom/ss/android/vesdk/TERecorderContext;->renderSize:Lcom/ss/android/vesdk/VESize;

    .line 1959
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-direct {v0, v3}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>(Lcom/ss/android/vesdk/VEDisplaySettings;)V

    .line 1960
    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 1961
    iget v3, p0, Lcom/ss/android/vesdk/TERecorder;->mCurrentLandscape:I

    if-eq v3, v2, :cond_31

    if-ne v3, v1, :cond_2a

    goto :goto_31

    :cond_2a
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getTranslateY()I

    move-result v1

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v1, 0x0

    :goto_32
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setTranslateY(I)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 1962
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 1963
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v1, "RenderWidth"

    iget v2, p1, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setInt(Ljava/lang/String;I)I

    .line 1964
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v1, "RenderHeight"

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setInt(Ljava/lang/String;I)I

    .line 1965
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    move-result p0

    return p0
.end method

.method public changeResManager(Lcom/ss/android/vesdk/runtime/VERecorderResManager;)I
    .registers 6

    .line 4577
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeResManager(Lcom/ss/android/vesdk/runtime/VERecorderResManager;)I

    .line 4578
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    const-string v1, "TERecorder"

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    .line 4580
    const-string p0, "Invoking the wrong timing!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 4583
    :cond_1a
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeResManager(Lcom/ss/android/vesdk/runtime/VERecorderResManager;)I

    .line 4584
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->audioPathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4585
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->videoPathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4586
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/ss/android/vesdk/TERecorderContext;->totalRecordingTime:J

    .line 4587
    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getSegmentDirPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 4588
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getSegmentDirPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/vesdk/TERecorderContext;->recordDirPath:Ljava/lang/String;

    .line 4590
    :cond_54
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->reset(Lcom/ss/android/vesdk/TERecorderContext;)I

    move-result p0

    if-eqz p0, :cond_72

    .line 4592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeResManager failed ret="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    return p0
.end method

.method public changeSurface(Landroid/view/Surface;)I
    .registers 3

    const/4 v0, -0x1

    .line 1213
    invoke-virtual {p0, p1, v0, v0}, Lcom/ss/android/vesdk/TERecorder;->changeSurface(Landroid/view/Surface;II)I

    move-result p0

    return p0
.end method

.method public changeSurface(Landroid/view/Surface;II)I
    .registers 4

    .line 1218
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setSurface(Landroid/view/Surface;)V

    .line 1219
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setDisplaySurface(Landroid/view/Surface;II)I

    move-result p0

    return p0
.end method

.method public changeSurfaceSync(Landroid/view/Surface;II)I
    .registers 4

    .line 1224
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setSurface(Landroid/view/Surface;)V

    .line 1225
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setDisplaySurfaceSync(Landroid/view/Surface;II)I

    move-result p0

    return p0
.end method

.method public changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 2

    .line 2020
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 2021
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    return-void
.end method

.method public changeVideoOutputSize(II)V
    .registers 6

    .line 1988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeOutputVideoSize: width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1989
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAspectVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    .line 1990
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz v0, :cond_59

    .line 1991
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_39

    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_59

    .line 1992
    :cond_39
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAspectVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    .line 1993
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/TERecorder;->aspectRenderSizeToAnotherSize(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 1994
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1995
    iget p1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget p2, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->changeVideoOutputSizeViaInner(II)V

    return-void

    .line 2001
    :cond_59
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(ILcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 2002
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 2003
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 2004
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    return-void
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 3

    .line 4120
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    .line 4125
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public clearAllFrags()V
    .registers 2

    .line 1431
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->clearAllFrags(Z)I

    return-void
.end method

.method public clearDisplayColor(IIII)V
    .registers 6

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 1983
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->clearDisplayColor(FFFF)V

    return-void
.end method

.method public clearLandMarkDetectListener()V
    .registers 1

    .line 3983
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->clearLandMarkDetectListener()V

    return-void
.end method

.method public clearSticker()V
    .registers 1

    return-void
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 13

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1529
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/vesdk/TERecorder;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 24

    move-object/from16 v0, p0

    .line 1534
    iget-object v1, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->isRecording()Z

    move-result v1

    const-string v2, "te_record_concat_ret"

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    const-wide/16 v0, -0x69

    .line 1535
    invoke-static {v3, v2, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    const/16 v0, -0x69

    return v0

    .line 1538
    :cond_15
    iget-object v1, v0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-boolean v4, v0, Lcom/ss/android/vesdk/TERecorder;->mUseMusic:Z

    if-eqz v4, :cond_25

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->micConfig:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    sget-object v4, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->ENABLE:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    if-eq v0, v4, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    move v0, v3

    :goto_26
    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VERecordData;->create(Lcom/ss/android/vesdk/runtime/VERecorderResManager;Z)Lcom/ss/android/vesdk/VERecordData;

    move-result-object v0

    const/16 v1, -0x64

    if-nez v0, :cond_2f

    return v1

    .line 1542
    :cond_2f
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_46

    .line 1545
    const-string v0, "VEUtils"

    const-string v4, "frag count is 0"

    invoke-static {v0, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x64

    .line 1546
    invoke-static {v3, v2, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return v1

    .line 1549
    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1550
    new-array v7, v4, [Ljava/lang/String;

    .line 1551
    new-array v9, v4, [Ljava/lang/String;

    .line 1552
    new-array v10, v4, [J

    .line 1553
    new-array v8, v4, [J

    .line 1554
    new-array v1, v4, [F

    move v11, v3

    :goto_55
    if-ge v11, v4, :cond_a0

    .line 1556
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget-object v12, v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    aput-object v12, v7, v11

    .line 1557
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget-wide v12, v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    aput-wide v12, v8, v11

    .line 1558
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget-object v12, v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudio:Ljava/lang/String;

    aput-object v12, v9, v11

    .line 1559
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget-wide v12, v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudioLength:J

    aput-wide v12, v10, v11

    .line 1560
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget v12, v12, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mSpeed:F

    aput v12, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_55

    :cond_a0
    move-object/from16 v11, p1

    .line 1562
    iput-object v11, v0, Lcom/ss/android/vesdk/VERecordData;->concatVideo:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 1563
    iput-object v1, v0, Lcom/ss/android/vesdk/VERecordData;->concatAudio:Ljava/lang/String;

    .line 1564
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecordData;->isUseMusic()Z

    move-result v11

    iget-object v15, v0, Lcom/ss/android/vesdk/VERecordData;->concatVideo:Ljava/lang/String;

    iget-object v0, v0, Lcom/ss/android/vesdk/VERecordData;->concatAudio:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, v0

    invoke-static/range {v7 .. v16}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->concatRecordFrag([Ljava/lang/String;[J[Ljava/lang/String;[JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-long v7, v0

    .line 1565
    invoke-static {v3, v2, v7, v8}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    const-string v4, "te_record_concat_time"

    invoke-static {v3, v4, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return v0
.end method

.method public concatAsync(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VECallListener;I)V
    .registers 18

    .line 1572
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$7;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v9, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/ss/android/vesdk/TERecorder$7;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteFrag(I)I
    .registers 4

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteRecordedFrag... index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_20

    .line 1438
    const-string p0, "deleteRecordedFrag... index less than zero!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 1441
    :cond_20
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->deleteFrag(I)I

    move-result p0

    return p0
.end method

.method public deleteLastFrag()V
    .registers 3

    .line 1406
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->deleteLastFrag(Z)I

    move-result v0

    .line 1407
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_16

    .line 1408
    :try_start_c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p0, :cond_16

    .line 1409
    invoke-interface {p0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->deleteLastFrag()V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 1411
    :cond_16
    :goto_16
    monitor-exit v1

    return-void

    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_14

    throw p0
.end method

.method public deleteLastFrag(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 1416
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mDeleteLastFragCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 1417
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->deleteLastFrag(Z)I

    move-result p1

    .line 1418
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_18

    .line 1419
    :try_start_e
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz v1, :cond_18

    .line 1420
    invoke-interface {v1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->deleteLastFrag()V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_24

    .line 1422
    :cond_18
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_16

    if-eqz p1, :cond_23

    .line 1424
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mDeleteLastFragCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    const/4 p1, 0x0

    .line 1425
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mDeleteLastFragCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    :cond_23
    return-void

    .line 1422
    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_16

    throw p0
.end method

.method public detachCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 3

    .line 945
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    const/4 v1, 0x0

    .line 946
    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-object v0
.end method

.method public disableRender(Z)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 3629
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->changeSurface(Landroid/view/Surface;)I

    :cond_6
    return-void
.end method

.method public downExposureCompensation()V
    .registers 1

    .line 4986
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_5

    return-void

    .line 4990
    :cond_5
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->downExposureCompensation()V

    return-void
.end method

.method public enableAudio(Z)V
    .registers 3

    .line 1693
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    if-eqz p1, :cond_7

    .line 1694
    sget-object p1, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->ENABLE:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    goto :goto_9

    :cond_7
    sget-object p1, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->DISABLE:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    :goto_9
    iput-object p1, v0, Lcom/ss/android/vesdk/TERecorderContext;->micConfig:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    .line 1695
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "RecordMicConfig"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setInt(Ljava/lang/String;I)I

    return-void
.end method

.method public enableAudioRecorder(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 4545
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TERecorder;->enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 4528
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->enableAudio(Z)V

    .line 4529
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_d

    .line 4531
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->initAudioCaptureInNeed()I

    return-void

    .line 4533
    :cond_d
    invoke-virtual {v0, p2}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    :cond_10
    return-void
.end method

.method public enableDuetMicRecord(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2350
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->enableAudio(Z)V

    return-void
.end method

.method public enableEffect(Z)V
    .registers 2

    .line 3623
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableEffect(Z)V

    return-void
.end method

.method public enableEffectAmazing(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4611
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableEffectAmazing(Z)V

    .line 4613
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4614
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda21;-><init>(Lcom/ss/android/vesdk/TERecorder;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4618
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableEffectAmazing(Z)V

    return-void
.end method

.method public enableFaceBeautifyDetect(I)V
    .registers 2

    .line 3379
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableFaceBeautifyDetect(I)V

    return-void
.end method

.method public enableFaceExtInfo(I)V
    .registers 5

    .line 3670
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3671
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda4;-><init>(Lcom/ss/android/vesdk/TERecorder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3675
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableFaceExtInfo(I)V

    return-void
.end method

.method public enableFirstFrameBypassEffectFrame(Z)V
    .registers 3

    .line 5369
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "EnableFirstFrameBypassEffect"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    return-void
.end method

.method public enableLensProcess(IZ)V
    .registers 5

    .line 5207
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 5208
    const-string v1, "LensFlag"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 5209
    const-string p1, "EnableLensProcess"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 5210
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "EnableLens"

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public enablePictureTestMode(ZZ)V
    .registers 4

    .line 5293
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 5294
    const-string v0, "ModeoPictureTestFlag"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 5295
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "enablePictureTestMode"

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public enableRecordingMp4(Z)V
    .registers 4

    .line 3712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRecordingMp4... value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3713
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "RecordingMp4"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    return-void
.end method

.method public enableScan(ZJ)V
    .registers 4

    .line 4152
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->enableScan(ZJ)V

    return-void
.end method

.method public enableSceneRecognition(Z)V
    .registers 2

    .line 3359
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableSceneRecognition(Z)V

    return-void
.end method

.method public enableSkeletonDetect(Z)V
    .registers 2

    .line 3369
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableSkeletonDetect(Z)V

    return-void
.end method

.method public enableSmartBeauty(Z)V
    .registers 3

    .line 3374
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableSmartBeauty(IZ)V

    return-void
.end method

.method public enableStickerRecognition(Z)V
    .registers 2

    .line 3364
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->enableSceneRecognition(Z)V

    return-void
.end method

.method public enableTimestampCallback(Z)V
    .registers 3

    .line 1700
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "EnableTimestampCallback"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    return-void
.end method

.method public enableWaterMark(Z)V
    .registers 4

    .line 5227
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableWaterMark(Z)V

    .line 5228
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 5229
    const-string v1, "EnableWaterMark"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 5230
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public freezeAudioClock()V
    .registers 3

    .line 5331
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "freezeAudioClock"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    return-void
.end method

.method getAECSuggestVolume()[F
    .registers 1

    const/4 p0, 0x2

    .line 4333
    new-array p0, p0, [F

    fill-array-data p0, :array_8

    return-object p0

    nop

    :array_8
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getAudioConsumer()Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    if-nez v0, :cond_b

    .line 438
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    .line 440
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    return-object p0
.end method

.method public getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;
    .registers 3

    .line 4952
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_20

    .line 4953
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 4955
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;-><init>()V

    .line 4956
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->exposure:I

    .line 4957
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->step:F

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->step:F

    .line 4958
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->max:I

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->max:I

    .line 4959
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->min:I

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->min:I

    return-object v0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .registers 2

    .line 4902
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_9

    .line 4903
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object p0

    return-object p0

    .line 4905
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No Camera capture to getCameraFacing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCameraFps()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getComposerNodePaths()Ljava/lang/String;
    .registers 1

    .line 4110
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->getComposerNodePaths()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3

    .line 4105
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;
    .registers 3

    .line 2294
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2295
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-nez p0, :cond_d

    .line 2296
    sget-object p0, Lcom/ss/android/vesdk/VERecordMode;->DEFAULT:Lcom/ss/android/vesdk/VERecordMode;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    goto :goto_29

    .line 2298
    :cond_d
    instance-of v1, p0, Lcom/ss/android/vesdk/proxy/TEReactProxy;

    if-eqz v1, :cond_15

    .line 2299
    sget-object p0, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    monitor-exit v0

    return-object p0

    .line 2301
    :cond_15
    instance-of v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    if-eqz v1, :cond_1d

    .line 2302
    sget-object p0, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    monitor-exit v0

    return-object p0

    .line 2304
    :cond_1d
    instance-of p0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    if-eqz p0, :cond_25

    .line 2305
    sget-object p0, Lcom/ss/android/vesdk/VERecordMode;->CUSTOM_VIDEO_BG:Lcom/ss/android/vesdk/VERecordMode;

    monitor-exit v0

    return-object p0

    .line 2307
    :cond_25
    sget-object p0, Lcom/ss/android/vesdk/VERecordMode;->DEFAULT:Lcom/ss/android/vesdk/VERecordMode;

    monitor-exit v0

    return-object p0

    .line 2308
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_b

    throw p0
.end method

.method public getCurrentCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 1

    .line 4202
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-object p0
.end method

.method public getDuetAudioPath()Ljava/lang/String;
    .registers 3

    .line 2313
    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 2314
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEDuetSettings;->getDuetAudioPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffect()Lcom/ss/android/vesdk/VEEffect;
    .registers 1

    .line 659
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    return-object p0
.end method

.method public bridge synthetic getEffect()Lcom/ss/android/vesdk/effect/IEffect;
    .registers 1

    .line 134
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p0

    return-object p0
.end method

.method public getEffectClient()Lcom/ss/android/vesdk/VEEffect;
    .registers 1

    .line 3213
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    return-object p0
.end method

.method public getEffectHandler()J
    .registers 3

    .line 3254
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->getEffectHandler()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndFrameTime()J
    .registers 3

    .line 1392
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "CurMediaTime"

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    return-wide v0
.end method

.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .registers 1

    .line 4157
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;

    move-result-object p0

    return-object p0
.end method

.method public getFilterIntensity(Ljava/lang/String;)F
    .registers 2

    .line 3352
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->getFilterIntensity(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getFrameByConfig(Lcom/ss/android/vesdk/VERecorder$FrameConfig;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 4

    .line 4188
    iget v0, p1, Lcom/ss/android/vesdk/VERecorder$FrameConfig;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 4189
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget-object p1, p1, Lcom/ss/android/vesdk/VERecorder$FrameConfig;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->getFrameByKey(Ljava/lang/String;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastPerformanceData()Lcom/ss/android/vesdk/model/VERecordPerformanceData;
    .registers 1

    .line 5322
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getLastPerformanceData()Lcom/ss/android/vesdk/model/VERecordPerformanceData;

    move-result-object p0

    return-object p0
.end method

.method public getLastRecordFrameNum()I
    .registers 1

    .line 4436
    iget p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCountOfLastFragFrames:I

    return p0
.end method

.method public getMicState()I
    .registers 2

    .line 4754
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-nez v0, :cond_9

    .line 4755
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getMicState()I

    move-result p0

    return p0

    .line 4757
    :cond_9
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCapture;->getMicState()I

    move-result p0

    return p0
.end method

.method public getPrePlayTimeStamp()J
    .registers 3

    .line 2276
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "PrePlayTimeStamp"

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
    .registers 5

    const/4 v0, 0x0

    .line 2512
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedDelay:Z

    .line 2513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2514
    new-instance v2, Lcom/ss/android/vesdk/TERecorder$8;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/ss/android/vesdk/TERecorder$8;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;J)V

    .line 2532
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setGetFrameListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;)V

    .line 2533
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    move-result p0

    return p0
.end method

.method public getPreviewFrameWithOrigin(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
    .registers 9

    const/4 v0, 0x0

    .line 2538
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedDelay:Z

    .line 2539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2541
    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->NO_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    .line 2542
    iget v4, p0, Lcom/ss/android/vesdk/TERecorder;->mMirrorMode:I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_12

    goto :goto_29

    .line 2544
    :cond_12
    iget v4, p0, Lcom/ss/android/vesdk/TERecorder;->mMirrorMode:I

    sget-object v5, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->X_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v4, v6, :cond_1e

    :goto_1c
    move-object v3, v5

    goto :goto_29

    .line 2546
    :cond_1e
    iget v4, p0, Lcom/ss/android/vesdk/TERecorder;->mMirrorMode:I

    sget-object v5, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->Y_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v4, v6, :cond_29

    goto :goto_1c

    .line 2550
    :cond_29
    :goto_29
    new-instance v4, Lcom/ss/android/vesdk/TERecorder$9;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/ss/android/vesdk/TERecorder$9;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;J)V

    .line 2571
    new-instance v1, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->RENDER_PICTURE_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 2572
    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 2573
    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v1

    sget-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->FULL_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    .line 2574
    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v1

    sget-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 2575
    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v1

    .line 2576
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v1

    .line 2577
    invoke-virtual {v1, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v1

    .line 2578
    invoke-virtual {v1, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setMirrorMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v1

    .line 2579
    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setNeedProcessAsCameraFrame(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2580
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object v0

    .line 2582
    new-instance v1, Lcom/ss/android/vesdk/TERecorder$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/ss/android/vesdk/TERecorder$10;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    .line 2600
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setGetFrameListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;)V

    .line 2601
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    move-result p0

    return p0
.end method

.method public getPreviewRenderRect()[I
    .registers 8

    .line 2026
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2030
    :cond_6
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v0

    if-nez v0, :cond_f

    return-object v1

    .line 2038
    :cond_f
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2039
    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 2041
    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v3, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2f

    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v3, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2b

    goto :goto_2f

    :cond_2b
    move v2, v0

    move v0, v4

    move v3, v0

    goto :goto_47

    .line 2043
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v0, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v3, v2

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v3, v5

    iget v5, p0, Lcom/ss/android/vesdk/TERecorderBase;->mViewportPaddingBottomInRadio34:F

    iget v6, p0, Lcom/ss/android/vesdk/TERecorder;->mPaddingBottomInRatio34Offset:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 2044
    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v3

    .line 2047
    :goto_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewRenderRect, surface size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", ratio mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", translateY: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TERecorder"

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    filled-new-array {v4, v0, v1, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method public getReactAudioPath()Ljava/lang/String;
    .registers 3

    .line 2366
    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 2367
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEReactSettings;->getReactAudioPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReactRegionInRecordVideoPixel()[I
    .registers 3

    .line 2400
    const-string v0, "TERecorder"

    const-string v1, "getReactRegionInRecordVideoPixel"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    .line 2402
    iget v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    const/4 v1, 0x0

    filled-new-array {v1, v1, v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getReactRegionInViewPixel()[I
    .registers 3

    .line 2392
    const-string v0, "TERecorder"

    const-string v1, "getReactRegionInViewPixel"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    .line 2394
    iget v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    const/4 v1, 0x0

    filled-new-array {v1, v1, v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getReactionPosMarginInViewPixel()[I
    .registers 2

    .line 2385
    const-string p0, "TERecorder"

    const-string v0, "getReactionPosMarginInViewPixel"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2386
    filled-new-array {p0, p0, p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getReactionWindowRotation()F
    .registers 2

    .line 2431
    const-string p0, "TERecorder"

    const-string v0, "getReactionWindowRotation"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getRecordCount()I
    .registers 3

    .line 4424
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v1, "ClipCount"

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordCount:I

    return v0
.end method

.method public getRecordStatus()I
    .registers 2

    .line 4430
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "RecordStatus"

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRecordedVideoPaths()[Ljava/lang/String;
    .registers 2

    .line 4562
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "VideoPaths"

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecorderModelControl()Lcom/ss/android/vesdk/IVERecorderModelControl;
    .registers 1

    .line 5336
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderBusiness:Lcom/ss/android/vesdk/IVERecorderBusiness;

    invoke-interface {p0}, Lcom/ss/android/vesdk/IVERecorderBusiness;->getRecorderModelControl()Lcom/ss/android/vesdk/IVERecorderModelControl;

    move-result-object p0

    return-object p0
.end method

.method public getRecorderPrePlayControl()Lcom/ss/android/vesdk/IVERecorderPrePlayControl;
    .registers 1

    .line 5417
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderBusiness:Lcom/ss/android/vesdk/IVERecorderBusiness;

    invoke-interface {p0}, Lcom/ss/android/vesdk/IVERecorderBusiness;->getPrePlayControl()Lcom/ss/android/vesdk/IVERecorderPrePlayControl;

    move-result-object p0

    return-object p0
.end method

.method public getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 4196
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSegmentAudioPlayBackTimestamp()J
    .registers 3

    .line 4572
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "PlayBackTimeStamp"

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getSegmentAudioUS()J
    .registers 3

    .line 4567
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getSegmentFrameTimeUS()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentFrameTimeUS()J
    .registers 3

    .line 1401
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "SegmentFrameTime"

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getSuggestionSettingsForKaraoke()Lcom/ss/android/vesdk/VEAudioCaptureSettings;
    .registers 5

    .line 4368
    const-string v0, "getSuggestionSettingsForKaraoke"

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz v0, :cond_3f

    .line 4370
    const-string v0, "get suggestion settings for karaoke"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4371
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_sys_karaoke"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4372
    new-instance v1, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;-><init>()V

    const/4 v3, 0x1

    .line 4373
    invoke-virtual {v1, v3}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setAudioDataStore(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v1

    .line 4374
    invoke-virtual {v1, v3}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setAudioCaptureLowLatency(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v1

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableEarBack:Z

    if-eqz v0, :cond_34

    move v2, v3

    .line 4375
    :cond_34
    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->enableSysKaraoke(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v0

    .line 4376
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->build()Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVEAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    return-object v0

    .line 4379
    :cond_3f
    const-string p0, "get suggestion settings for karaoke error, current is old audio capture"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoController()Lcom/ss/android/medialib/presenter/ITEVideoController;
    .registers 3

    .line 4234
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4235
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p0, :cond_16

    instance-of v1, p0, Lcom/ss/android/medialib/presenter/ITEVideoController;

    if-eqz v1, :cond_16

    .line 4236
    new-instance v1, Lcom/ss/android/vesdk/VETitanVideoController;

    check-cast p0, Lcom/ss/android/medialib/presenter/ITEVideoController;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VETitanVideoController;-><init>(Lcom/ss/android/medialib/presenter/ITEVideoController;)V

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    goto :goto_1d

    .line 4238
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_14

    .line 4239
    new-instance p0, Lcom/ss/android/vesdk/VEEmptyVideoController;

    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEmptyVideoController;-><init>()V

    return-object p0

    .line 4238
    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_14

    throw p0
.end method

.method public handleEffectAudio(ZJ)V
    .registers 4

    .line 4043
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->handleEffectAudio(ZJ)V

    return-void
.end method

.method public handleEffectAudioPlay(Z)V
    .registers 2

    .line 4048
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->handleEffectAudioPlay(Z)V

    return-void
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15

    .line 670
    new-instance v1, Lcom/ss/android/vesdk/VECameraCapture;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VECameraCapture;-><init>()V

    .line 671
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    .line 672
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->init(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings;)I

    move-result p1

    if-eqz p1, :cond_29

    .line 674
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VECameraCapture init failed, ret = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TERecorder"

    invoke-static {p2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_29
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 677
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/vesdk/TERecorder;->init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 664
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet in TERecorder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 10

    .line 684
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->attachCameraCapture(Lcom/ss/android/vesdk/camera/ICameraCapture;)V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    .line 685
    :cond_7
    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object p1

    :goto_b
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz p1, :cond_28

    .line 686
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object p1

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne p1, v0, :cond_28

    .line 688
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object p1

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-eq p1, v0, :cond_28

    .line 689
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VECameraSettings;->setOutPutMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)V

    .line 692
    :cond_28
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->recordDirPath:Ljava/lang/String;

    .line 693
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-nez p1, :cond_54

    .line 694
    new-instance p1, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    .line 695
    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEPreviewSettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p1

    .line 696
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 698
    :cond_54
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEPreviewSettings;->getRecordContentType()I

    move-result p5

    iput p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->recordContentType:I

    .line 699
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEPreviewSettings;->needPostProcess()Z

    move-result p5

    iput-boolean p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->needPostProcess:Z

    .line 700
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    new-instance p5, Ljava/util/LinkedList;

    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    iput-object p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->videoPathQueue:Ljava/util/Queue;

    .line 701
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    new-instance p5, Ljava/util/LinkedList;

    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    iput-object p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->audioPathQueue:Ljava/util/Queue;

    .line 702
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEPreviewSettings;->isRecordEffectContentHighSpeed()Z

    move-result p5

    iput-boolean p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->enableRecordEffectContentHighSpeed:Z

    .line 703
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnable2DEngineEffect()Z

    move-result p5

    iput-boolean p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->enable2DEngineEffect:Z

    .line 704
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnableEffectAmazingEngine()Z

    move-result p5

    iput-boolean p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->enableEffectAmazingEngine:Z

    .line 705
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEPreviewSettings;->isFollowShotIndependentThread()Z

    move-result p5

    iput-boolean p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->enableFollowShotIndependentThread:Z

    .line 707
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    const/4 p5, 0x0

    iput-boolean p5, p1, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioGraphRefactor:Z

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableAudioGraphRefactor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-boolean v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioGraphRefactor:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TERecorder"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_titan_release_gpu_resource"

    invoke-virtual {v0, v1, p5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/ss/android/vesdk/TERecorderContext;->enableReleaseGPUResource:Z

    .line 711
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEPreviewSettings;->getAudioDecodeTimeOpt()Z

    move-result v0

    iput-boolean v0, p1, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioDecodeTimeOpt:Z

    .line 712
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p1

    const-string v0, "ve_enable_render_encode_resolution_align4"

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_102

    .line 713
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_102

    .line 715
    new-instance v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {v1, v0, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(ILcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 716
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f5

    const/4 p1, 0x4

    goto :goto_f7

    :cond_f5
    const/16 p1, 0x10

    :goto_f7
    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResolutionAlignment(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 717
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    goto :goto_104

    .line 719
    :cond_102
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 721
    :goto_104
    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 722
    iput-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    .line 723
    iput-object p6, p0, Lcom/ss/android/vesdk/TERecorderBase;->mDetectModelsDir:Ljava/lang/String;

    .line 724
    iput-boolean p7, p0, Lcom/ss/android/vesdk/TERecorder;->mIsARCoreSupported:Z

    .line 728
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    if-eqz p1, :cond_114

    .line 729
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iput-boolean v0, p1, Lcom/ss/android/vesdk/TERecorderContext;->waitRenderScreenUntilNotify:Z

    .line 733
    :cond_114
    invoke-static {p5}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 735
    invoke-static {p5}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 736
    const-string p1, "te_titan_engine"

    const-wide/16 p2, 0x1

    invoke-static {p5, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 738
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->initInternalRecorder()I

    move-result p0

    return p0
.end method

.method public initDuet(Lcom/ss/android/vesdk/VEDuetSettings;)V
    .registers 4

    .line 4662
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 4664
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget p1, p1, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    if-nez p1, :cond_c

    .line 4665
    sget-object p1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    .line 4667
    :cond_c
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "waitRenderScreenUntilNotify"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 4668
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "FocusSingleAudioTrack"

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 4669
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4670
    :try_start_1e
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz v0, :cond_2f

    instance-of v1, v0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    if-nez v1, :cond_2f

    .line 4671
    invoke-interface {v0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onDestroy()V

    const/4 v0, 0x0

    .line 4672
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_35

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    .line 4675
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->setCameraFirstFrameOptimize(Z)V

    .line 4676
    monitor-exit p1

    return-void

    :goto_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_2d

    throw p0
.end method

.method public initFaceBeautifyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;)V
    .registers 2

    .line 3655
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->initFaceBeautifyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;)V

    return-void
.end method

.method public initFaceBeautyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;)V
    .registers 2

    .line 3650
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->initFaceBeautyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;)V

    return-void
.end method

.method public initFaceDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)V
    .registers 2

    .line 3640
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->initFaceDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)V

    return-void
.end method

.method public initFollowingShotWindow(Ljava/lang/String;JJ)I
    .registers 8

    .line 2086
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2087
    const-string v1, "FollowingShotFilePath"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setString(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    const-string p1, "FollowingShotTrimIn"

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 2089
    const-string p1, "FollowingShotTrimOut"

    invoke-virtual {v0, p1, p4, p5}, Lcom/ss/android/ttve/nativePort/TEBundle;->setLong(Ljava/lang/String;J)I

    .line 2090
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "initFollowingShotWindow"

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public initHDRNetDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;)V
    .registers 2

    .line 3660
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->initHDRNetDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;)V

    return-void
.end method

.method public initHandDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;)V
    .registers 2

    .line 3645
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->initHandDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;)V

    return-void
.end method

.method public initReact(Lcom/ss/android/vesdk/VEReactSettings;)V
    .registers 2

    .line 4681
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->initReact(Lcom/ss/android/vesdk/VEReactSettings;)V

    const/4 p1, 0x0

    .line 4682
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setCameraFirstFrameOptimize(Z)V

    return-void
.end method

.method public isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
    .registers 2

    .line 4249
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z

    move-result p0

    return p0
.end method

.method public isSupportedExposureCompensation()Z
    .registers 1

    .line 4946
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->isSupportedExposureCompensation()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public loadDraft(Lcom/ss/android/vesdk/VERecordDraft;)I
    .registers 14

    .line 5383
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VERecordDraft;->isValid()Z

    move-result v0

    const-string v1, "TERecorder"

    if-nez v0, :cond_10

    .line 5384
    const-string p0, "invalid draft."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 5387
    :cond_10
    const-string v0, "loadDraft..."

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5388
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 5389
    iget-object v1, p1, Lcom/ss/android/vesdk/VERecordDraft;->durations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 5390
    iget-object v2, p1, Lcom/ss/android/vesdk/VERecordDraft;->durations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 5391
    iget-object v3, p1, Lcom/ss/android/vesdk/VERecordDraft;->durations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [D

    const/4 v4, 0x0

    move v5, v4

    .line 5392
    :goto_33
    iget-object v6, p1, Lcom/ss/android/vesdk/VERecordDraft;->durations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_52

    .line 5393
    aput v4, v1, v5

    .line 5394
    iget-object v6, p1, Lcom/ss/android/vesdk/VERecordDraft;->durations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 5395
    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 5397
    :cond_52
    iget-object v5, p1, Lcom/ss/android/vesdk/VERecordDraft;->videoPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 5398
    iget-object v6, p1, Lcom/ss/android/vesdk/VERecordDraft;->videoPaths:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5399
    iget-object v6, p1, Lcom/ss/android/vesdk/VERecordDraft;->audioPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 5400
    iget-object p1, p1, Lcom/ss/android/vesdk/VERecordDraft;->audioPaths:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5401
    const-string p1, "Paths"

    invoke-virtual {v0, p1, v5}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 5402
    const-string v5, "TrimIns"

    invoke-virtual {v0, v5, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 5403
    const-string v7, "TrimOuts"

    invoke-virtual {v0, v7, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 5404
    const-string v8, "Speeds"

    invoke-virtual {v0, v8, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDoubleArray(Ljava/lang/String;[D)I

    .line 5405
    const-string v9, "TrackType"

    invoke-virtual {v0, v9, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 5406
    iget-object v10, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v11, "FillRecordedClips"

    invoke-virtual {v10, v11, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 5407
    invoke-virtual {v0, v5, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 5408
    invoke-virtual {v0, v7, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 5409
    invoke-virtual {v0, p1, v6}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 5410
    invoke-virtual {v0, v8, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDoubleArray(Ljava/lang/String;[D)I

    const/4 p1, 0x1

    .line 5411
    invoke-virtual {v0, v9, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 5412
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, v11, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return v4
.end method

.method public notifyFollowShotSurfaceChanged(IIIZ)V
    .registers 5

    .line 2074
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->notifyFollowShotSurfaceChanged(IIIZ)V

    return-void
.end method

.method public notifySurfaceChanged(IIIZ)V
    .registers 5

    .line 2069
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->notifySurfaceChanged(IIIZ)V

    return-void
.end method

.method public onCameraPreviewSizeChanged(II)V
    .registers 8

    .line 4502
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderContext;->renderSize:Lcom/ss/android/vesdk/VESize;

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 4503
    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 4504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCameraPreviewSizeChanged], previewW = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", previewH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", renderW = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", renderH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TERecorder"

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p1, v0, :cond_71

    if-ge p2, v1, :cond_71

    const/4 p1, 0x4

    const/4 v2, 0x1

    .line 4508
    invoke-static {p2, p1, v2}, Lcom/ss/android/vesdk/util/TEUtils;->getNAlign(IIZ)I

    move-result p2

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4509
    invoke-static {v0, p1, v2}, Lcom/ss/android/vesdk/util/TEUtils;->getNAlign(IIZ)I

    move-result p1

    .line 4510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCameraPreviewSizeChanged], will change render size, newRenderW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newRenderH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4512
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p2, p1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->changeRenderSize(Lcom/ss/android/vesdk/VESize;)I

    :cond_71
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 908
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 911
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/camera/TECamera;->destroy()V

    .line 912
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->releaseInternalRecorder()V

    .line 913
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mErrorMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    .line 914
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 915
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    .line 916
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 917
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    if-eqz v0, :cond_1f

    .line 918
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEffect;->destroy()V

    .line 920
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-eqz v0, :cond_26

    .line 921
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCapture;->clean()V

    .line 923
    :cond_26
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    if-eqz v0, :cond_2d

    .line 924
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->release()V

    .line 926
    :cond_2d
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->onDestroy()V

    const/4 p0, 0x0

    .line 927
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public pauseEffectAudio(Z)V
    .registers 5

    .line 3988
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3989
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda2;-><init>(Lcom/ss/android/vesdk/TERecorder;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3993
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->pauseEffectAudio(Z)V

    return-void
.end method

.method public pausePlayTrack(II)I
    .registers 10

    .line 4643
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setPlayTrackStatus(IIIJZ)I

    move-result p0

    return p0
.end method

.method public pausePrePlay()I
    .registers 1

    .line 2247
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->pausePrePlay()I

    move-result p0

    return p0
.end method

.method public pauseRender()I
    .registers 3

    .line 5098
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_titan_release_gpu_resource"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5099
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->pauseRender()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public pauseRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 5068
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_titan_release_gpu_resource"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5069
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mPauseRenderCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 5070
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->pauseRender()I

    move-result p0

    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    .line 5072
    invoke-interface {p1, p0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    return-void

    :cond_26
    if-eqz p1, :cond_2c

    const/4 p0, 0x0

    .line 5076
    invoke-interface {p1, p0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_2c
    return-void
.end method

.method public posInReactionRegion(II)Z
    .registers 3

    .line 2443
    const-string p0, "TERecorder"

    const-string p1, "posInReactionRegion"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public preSurfaceCreated()V
    .registers 1

    return-void
.end method

.method public preventTextureRender(Z)V
    .registers 2

    .line 3198
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    if-eqz p0, :cond_7

    .line 3199
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->preventTextureRender(Z)V

    :cond_7
    return-void
.end method

.method public previewDuetVideo()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public processTouchEvent(FF)I
    .registers 5

    .line 3809
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/gesture/VEGesture;->createTouchEvent(FF)Lcom/ss/android/vesdk/gesture/VEGesture;

    move-result-object p1

    .line 3810
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string v0, "ve_enable_recorder_lowmem_async_mode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 3811
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda24;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    .line 3816
    :cond_20
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
    .registers 3

    .line 4254
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z

    move-result p0

    return p0
.end method

.method public queryShaderStep()F
    .registers 1

    .line 5004
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5008
    :cond_6
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->queryShaderZoomAbility()F

    move-result p0

    return p0
.end method

.method public queryZoomAbility()I
    .registers 1

    .line 4995
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 4999
    :cond_6
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->queryZoomAbility()I

    move-result p0

    return p0
.end method

.method public recoverCherEffect(Lcom/ss/android/vesdk/VECherEffectParam;)V
    .registers 2

    .line 3762
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->recoverCherEffect(Lcom/ss/android/vesdk/VECherEffectParam;)V

    return-void
.end method

.method public regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
    .registers 2

    .line 5341
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V

    return-void
.end method

.method public regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 2

    .line 4386
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    .line 4387
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    return-void
.end method

.method public regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 5

    .line 4449
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    .line 4451
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4452
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda16;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4456
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    return-void
.end method

.method public regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 5

    .line 4475
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    .line 4477
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4478
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda27;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4482
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    return-void
.end method

.method public releaseGPUResources()V
    .registers 2

    .line 483
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->releaseGPUResources(Z)I

    return-void
.end method

.method public releaseGPUResourcesAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 4745
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mReleaseGPUCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 4746
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->releaseGPUResources(Z)I

    move-result p0

    if-eqz p0, :cond_e

    .line 4748
    invoke-interface {p1, p0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_e
    return-void
.end method

.method public releasePreviewFakeFrameResource(Z)V
    .registers 8

    .line 1066
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1067
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_41

    .line 1068
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurIndexList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_3b

    .line 1070
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    .line 1071
    const-string v3, "TERecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releasePreviewFakeFrameResource, removeTrackFilter, blurIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_57

    .line 1074
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurIndexList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_41
    if-eqz p1, :cond_55

    .line 1077
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_55

    .line 1078
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 1079
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 1081
    :cond_55
    monitor-exit v0

    return-void

    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_39

    throw p0
.end method

.method public reloadComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 4078
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->reloadComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeComposerNodes([Ljava/lang/String;I)I
    .registers 6

    .line 4088
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4089
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;-><init>(Lcom/ss/android/vesdk/TERecorder;[Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    .line 4094
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->removeComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 2

    .line 4393
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    .line 4394
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    return-void
.end method

.method public removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 3975
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public removeRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V
    .registers 3

    .line 4708
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateLisLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4709
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4710
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeTrack(II)I
    .registers 4

    const/4 v0, 0x0

    .line 2168
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    move-result p0

    return p0
.end method

.method public removeTrack(IIZ)I
    .registers 6

    .line 2187
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2188
    const-string v1, "TrackIndex"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2189
    const-string p2, "TrackType"

    invoke-virtual {v0, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2190
    const-string p1, "UpdateTimeline"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 2191
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "RemoveTrack"

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
    .registers 13

    const-wide/16 p4, 0x0

    .line 3156
    invoke-static {p1, p4, p5}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Landroid/graphics/Bitmap;J)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p4

    .line 3157
    new-instance p5, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {p5}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->RENDER_PICTURE_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 3158
    invoke-virtual {p5, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p5

    const/4 v0, 0x1

    .line 3159
    invoke-virtual {p5, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p5

    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->FULL_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    .line 3160
    invoke-virtual {p5, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p5

    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 3161
    invoke-virtual {p5, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p5

    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p2, p3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 3162
    invoke-virtual {p5, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p2

    .line 3163
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object p2

    .line 3164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 3165
    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 3166
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {p4}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v3

    invoke-virtual {p4}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v4

    invoke-virtual {p4}, Lcom/ss/android/ttve/model/VEFrame;->getRotation()I

    move-result v5

    sget-object p1, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_ARGB8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>([BIIIII)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    .line 3167
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, v0, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->renderFrame(Lcom/ss/android/ttvecamera/TECameraFrameSetting;Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    return-void
.end method

.method public renderFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/vesdk/VEGetFrameSettings;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3089
    new-instance v2, Lcom/ss/android/vesdk/TERecorder$18;

    invoke-direct {v2, v0, v1}, Lcom/ss/android/vesdk/TERecorder$18;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    .line 3096
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getDirectBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3098
    iget-object v4, v0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-virtual {v4, v2}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setGetFrameListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;)V

    .line 3099
    invoke-static/range {p1 .. p1}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->VEFrame2ImageFrame(Lcom/ss/android/ttve/model/VEFrame;)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_84

    .line 3101
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v2

    .line 3102
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getFormat()Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v5

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v5, v6, :cond_7b

    instance-of v5, v2, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;

    if-eqz v5, :cond_7b

    .line 3103
    check-cast v2, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;

    .line 3104
    invoke-virtual {v2}, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;->getIntArray()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3105
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3106
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 3107
    new-instance v5, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getRotation()I

    move-result v10

    sget-object v4, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_ARGB8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-direct/range {v5 .. v11}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>([BIIIII)V

    iput-object v5, v0, Lcom/ss/android/vesdk/TERecorder;->mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    .line 3108
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v3, :cond_73

    .line 3110
    iget-object v2, v0, Lcom/ss/android/vesdk/TERecorder;->mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {v2, v3}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->setDirectBitmap(Landroid/graphics/Bitmap;)V

    .line 3112
    :cond_73
    iget-object v2, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder;->mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->renderFrame(Lcom/ss/android/ttvecamera/TECameraFrameSetting;Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    return-void

    .line 3115
    :cond_7b
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v4, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult([III)V

    return-void

    .line 3120
    :cond_84
    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v5

    const/4 v6, 0x3

    if-eqz v5, :cond_b4

    .line 3121
    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_94

    :goto_92
    move v13, v6

    goto :goto_97

    :cond_94
    const/16 v6, 0x11

    goto :goto_92

    .line 3122
    :goto_97
    new-instance v7, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v8

    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v4

    array-length v9, v4

    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v10

    .line 3123
    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getRotation()I

    move-result v12

    invoke-direct/range {v7 .. v13}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>([BIIIII)V

    iput-object v7, v0, Lcom/ss/android/vesdk/TERecorder;->mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    goto :goto_109

    .line 3124
    :cond_b4
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getFormat()Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v5

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_YUV420:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    if-ne v5, v7, :cond_f8

    const/4 v5, 0x2

    .line 3125
    new-array v7, v5, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    aput v6, v7, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 3126
    new-array v6, v6, [Ljava/nio/ByteBuffer;

    .line 3127
    new-instance v9, Lcom/ss/android/medialib/PlanFrame;

    invoke-direct {v9, v2}, Lcom/ss/android/medialib/PlanFrame;-><init>(Lcom/ss/android/medialib/camera/ImageFrame;)V

    invoke-virtual {v9, v7, v6}, Lcom/ss/android/medialib/PlanFrame;->convert([[I[Ljava/nio/ByteBuffer;)Z

    .line 3128
    new-instance v10, Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    aget-object v11, v6, v4

    aget-object v12, v7, v4

    aget-object v13, v6, v8

    aget-object v14, v7, v8

    aget-object v15, v6, v5

    aget-object v16, v7, v5

    .line 3129
    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v17

    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ttve/model/VEFrame;->getRotation()I

    move-result v19

    const/16 v20, 0x0

    invoke-direct/range {v10 .. v20}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;-><init>(Ljava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIII)V

    iput-object v10, v0, Lcom/ss/android/vesdk/TERecorder;->mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    goto :goto_109

    .line 3130
    :cond_f8
    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "Not support now."

    const-string v5, "TERecorder"

    if-eqz v2, :cond_106

    .line 3132
    invoke-static {v5, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_109

    .line 3134
    :cond_106
    invoke-static {v5, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    :goto_109
    iget v2, v0, Lcom/ss/android/vesdk/TERecorder;->mCurrentLandscape:I

    if-eqz v2, :cond_13b

    .line 3139
    new-instance v2, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {v2, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>(Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    .line 3140
    iget v4, v0, Lcom/ss/android/vesdk/TERecorder;->mCurrentLandscape:I

    rsub-int v4, v4, 0x168

    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectRotation(I)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    .line 3141
    iget v4, v0, Lcom/ss/android/vesdk/TERecorder;->mCurrentLandscape:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_123

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_137

    .line 3142
    :cond_123
    new-instance v4, Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-direct {v4, v5, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    .line 3144
    :cond_137
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object v1

    :cond_13b
    if-eqz v3, :cond_142

    .line 3148
    iget-object v2, v0, Lcom/ss/android/vesdk/TERecorder;->mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {v2, v3}, Lcom/ss/android/ttvecamera/TECameraFrameSetting;->setDirectBitmap(Landroid/graphics/Bitmap;)V

    .line 3151
    :cond_142
    iget-object v2, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder;->mFrameSetting:Lcom/ss/android/ttvecamera/TECameraFrameSetting;

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->renderFrame(Lcom/ss/android/ttvecamera/TECameraFrameSetting;Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    return-void
.end method

.method public renderFrame(Ljava/lang/String;)V
    .registers 9

    .line 3173
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3174
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_13

    .line 3176
    const-string p0, "TERecorder"

    const-string p1, "error picture"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3179
    :cond_13
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/vesdk/TERecorder;->renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    return-void
.end method

.method public replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 5

    .line 4100
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEEffect;->replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public rotateReactionWindow(F)F
    .registers 2

    .line 2424
    const-string p0, "TERecorder"

    const-string p1, "rotateReactionWindow"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runTask(Ljava/lang/Runnable;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 2234
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public scaleReactionWindow(F)[I
    .registers 8

    .line 2416
    const-string p1, "TERecorder"

    const-string v0, "scaleReactionWindow"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    .line 2418
    iget v2, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v3, p0, Lcom/ss/android/vesdk/VESize;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    filled-new-array/range {v0 .. v5}, [I

    move-result-object p0

    return-object p0
.end method

.method public seekTrack(IIJ)I
    .registers 12

    .line 4648
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-wide/16 v1, 0x3e8

    mul-long v4, p3, v1

    const/4 v6, 0x0

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setPlayTrackStatus(IIIJZ)I

    move-result p0

    return p0
.end method

.method public sendEffectMsg(IJJLjava/lang/String;)V
    .registers 16

    .line 3767
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3768
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;-><init>(Lcom/ss/android/vesdk/TERecorder;IJJLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_21
    move-object v2, p0

    .line 3772
    iget-object p0, v2, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/vesdk/VEEffect;->sendEffectMsg(IJJLjava/lang/String;)V

    return-void
.end method

.method public setAlgorithmPreConfig(II)I
    .registers 3

    .line 4068
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setAlgorithmPreConfig(II)I

    move-result p0

    return p0
.end method

.method public setAudioCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V
    .registers 4

    .line 5272
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->isEnableAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_24

    if-nez p1, :cond_16

    .line 5273
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioCaptureListener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-eqz v0, :cond_16

    .line 5274
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VEAudioCapture;->removeCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)Z

    goto :goto_21

    .line 5275
    :cond_16
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioCaptureListener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    .line 5276
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEAudioCapture;->addCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)Z

    .line 5278
    :cond_21
    :goto_21
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioCaptureListener:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    return-void

    .line 5280
    :cond_24
    new-instance v0, Lcom/ss/android/vesdk/TERecorder$25;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TERecorder$25;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V

    .line 5289
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setAudioCaptureListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IAudioCaptureCallback;)V

    return-void
.end method

.method public setAudioStreamInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)I"
        }
    .end annotation

    .line 1857
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1858
    const-string v1, "TrackIndex"

    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1859
    const-string v1, "TrackType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1860
    const-string v1, "Paths"

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1861
    const-string p1, "TrimIns"

    invoke-static {p2}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 1862
    const-string p1, "TrimOuts"

    invoke-static {p3}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 1863
    const-string p1, "Speeds"

    invoke-static {p4}, Lcom/ss/android/vesdk/utils/TEArrayUtils;->toDoubleArray(Ljava/util/List;)[D

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDoubleArray(Ljava/lang/String;[D)I

    .line 1864
    const-string p1, "Loop"

    invoke-virtual {v0, p1, p5}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1866
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p2, "AudioStreamInfo"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public setBackground(IIII)V
    .registers 6

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 1974
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBackground(FFFF)V

    return-void
.end method

.method public setBeautyFace(ILjava/lang/String;)I
    .registers 13

    .line 3397
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 3398
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;-><init>()V

    goto :goto_14

    :goto_1c
    if-eqz v0, :cond_27

    .line 3399
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, -0x1

    :goto_28
    const/4 v9, 0x0

    if-nez p1, :cond_38

    if-ltz v2, :cond_38

    .line 3403
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3404
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    return v9

    .line 3409
    :cond_38
    iput p1, v6, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->beautyType:I

    if-nez p2, :cond_3e

    .line 3410
    const-string p2, ""

    :cond_3e
    iput-object p2, v6, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->beautyName:Ljava/lang/String;

    if-ltz v2, :cond_48

    .line 3413
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_53

    .line 3415
    :cond_48
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_53
    if-nez v0, :cond_5e

    .line 3419
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3421
    :cond_5e
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v9
.end method

.method public setBeautyFaceIntensity(FF)I
    .registers 6

    .line 3427
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/16 v1, -0x69

    if-nez v0, :cond_13

    return v1

    .line 3432
    :cond_13
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;

    .line 3433
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_22

    return v1

    .line 3439
    :cond_22
    iput p1, v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->smoothIntensity:F

    .line 3440
    iput p2, v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->brightenIntensity:F

    .line 3442
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public setBeautyIntensity(IF)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setBgmMute(Z)V
    .registers 5

    .line 3999
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4000
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda5;-><init>(Lcom/ss/android/vesdk/TERecorder;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4004
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setBgmMute(Z)V

    return-void
.end method

.method public setCameraFirstFrameOptimize(Z)V
    .registers 5

    .line 3681
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3682
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda18;-><init>(Lcom/ss/android/vesdk/TERecorder;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3686
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setCameraFirstFrameOptimize(Z)V

    return-void
.end method

.method public setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V
    .registers 2

    .line 1446
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    .line 1447
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 1448
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    :cond_a
    return-void
.end method

.method public setCameraZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V
    .registers 2

    .line 5052
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V

    .line 5053
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 5054
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V

    :cond_a
    return-void
.end method

.method public setCaptureMirror(I)V
    .registers 2

    .line 3191
    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mMirrorMode:I

    return-void
.end method

.method public setCaptureMirror(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setCommonCallback(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 4

    .line 654
    const-string v0, "TERecorder"

    const-string v1, "setCommonCallback..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;

    return-void
.end method

.method public setComposerMode(II)I
    .registers 3

    .line 4073
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setComposerMode(II)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 4058
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setComposerResourcePath(Ljava/lang/String;)I
    .registers 2

    .line 4053
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setComposerResourcePath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
    .registers 2

    .line 3260
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    return-void
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2488
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2489
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    instance-of v3, v1, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;

    if-nez v3, :cond_14

    .line 2490
    invoke-interface {v1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onDestroy()V

    .line 2491
    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_42

    .line 2493
    :cond_14
    :goto_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2494
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-nez v1, :cond_2f

    .line 2495
    new-instance v1, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 2496
    invoke-interface {v1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    goto :goto_34

    .line 2498
    :cond_2f
    check-cast v1, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->changeGif(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    :goto_34
    sget-object p1, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_VIDEO_GIF_BG:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    goto :goto_40

    .line 2502
    :cond_39
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    invoke-interface {p1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onDestroy()V

    .line 2503
    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 2505
    :goto_40
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_12

    throw p0
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 2466
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2467
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    instance-of v3, v1, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    if-nez v3, :cond_14

    .line 2468
    invoke-interface {v1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onDestroy()V

    .line 2469
    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_47

    .line 2471
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-nez v1, :cond_22

    .line 2472
    new-instance v1, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 2473
    invoke-interface {v1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    .line 2475
    :cond_22
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    check-cast v1, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    invoke-virtual {v1, p1, p2, p3}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->changeVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 2477
    sget-object p1, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_VIDEO_BG:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    goto :goto_45

    .line 2479
    :cond_3a
    sget-object p1, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_NORMAL:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 2480
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    invoke-interface {p1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onDestroy()V

    .line 2481
    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 2483
    :goto_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_12

    throw p0
.end method

.method public setDLEEnable(Z)V
    .registers 5

    .line 4032
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4033
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda26;-><init>(Lcom/ss/android/vesdk/TERecorder;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4037
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setDLEEnable(Z)V

    return-void
.end method

.method public setDetectInterval(I)V
    .registers 5

    .line 4413
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4414
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda9;-><init>(Lcom/ss/android/vesdk/TERecorder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4418
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setDetectInterval(I)V

    return-void
.end method

.method public setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V
    .registers 4

    .line 4404
    invoke-super {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V

    if-nez p2, :cond_9

    .line 4406
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mDetectListenerFlag:I

    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mDetectListenerFlag:I

    .line 4408
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V

    return-void
.end method

.method public setDeviceRotation([F)V
    .registers 4

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 3789
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/vesdk/TERecorder;->setDeviceRotation([FD)V

    return-void
.end method

.method public setDeviceRotation([FD)V
    .registers 4

    .line 3794
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->setDeviceRotation([FD)V

    return-void
.end method

.method public setDisplayParamsListener(Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;)V
    .registers 2

    .line 5327
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setDisplayParamsListener(Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;)V

    return-void
.end method

.method public setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I
    .registers 11

    .line 1872
    sget-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;->GAUSSIAN_BLUR:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getDisplayEffect()Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_3a

    .line 1873
    new-instance v6, Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;-><init>()V

    .line 1874
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getEffectIntensity()F

    move-result v0

    iput v0, v6, Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;->intensity:F

    .line 1875
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1876
    :try_start_17
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterIndex:I

    if-gez v0, :cond_2d

    .line 1877
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v3

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterIndex:I

    goto :goto_36

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto :goto_38

    .line 1879
    :cond_2d
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v3, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterIndex:I

    invoke-virtual {v0, v3, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 1881
    :goto_36
    monitor-exit v1

    goto :goto_5c

    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_2a

    throw p0

    .line 1882
    :cond_3a
    sget-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;->NONE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getDisplayEffect()Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    move-result-object v1

    if-ne v0, v1, :cond_5c

    .line 1883
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1884
    :try_start_45
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterIndex:I

    if-ltz v0, :cond_58

    .line 1885
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v3, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterIndex:I

    invoke-virtual {v0, v3}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    .line 1886
    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mBlurFilterIndex:I

    goto :goto_58

    :catchall_55
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    .line 1888
    :cond_58
    :goto_58
    monitor-exit v1

    goto :goto_5c

    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_55

    throw p0

    .line 1890
    :cond_5c
    :goto_5c
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    if-eqz v0, :cond_be

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCamOutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 1891
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCamOutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1892
    new-instance v6, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;-><init>()V

    .line 1893
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iput v0, v6, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;->layoutWidth:I

    .line 1894
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    iput v0, v6, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;->layoutHeight:I

    .line 1895
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCamOutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iput v0, v6, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;->camOutWidth:I

    .line 1896
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCamOutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    iput v0, v6, Lcom/ss/android/vesdk/filterparam/VEMIMOFilterParam;->camOutHeight:I

    .line 1897
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mMimoFilterIndex:I

    if-gez v0, :cond_b4

    .line 1898
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v3

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mMimoFilterIndex:I

    goto :goto_cd

    .line 1900
    :cond_b4
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder;->mMimoFilterIndex:I

    invoke-virtual {v0, v1, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_cd

    .line 1903
    :cond_be
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mMimoFilterIndex:I

    if-le v0, v2, :cond_cd

    .line 1904
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder;->mMimoFilterIndex:I

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    .line 1905
    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mMimoFilterIndex:I

    .line 1908
    :cond_cd
    :goto_cd
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1909
    const-string v1, "TranslateX"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getTranslateX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1910
    const-string v1, "TranslateY"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getTranslateY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1911
    const-string v1, "FitMode"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getFitMode()Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1912
    const-string v1, "Rotation"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1913
    const-string v1, "CameraEffectRotation"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getEffectRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1914
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getEffectRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEEffect;->setEffectRotation(I)V

    .line 1915
    const-string v1, "DisplayRotation"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getDisplayRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1916
    const-string v1, "AdaptSurfaceSize"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->isForceAdaptSurfaceSize()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1917
    new-instance v1, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {v1, p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>(Lcom/ss/android/vesdk/VEDisplaySettings;)V

    .line 1918
    const-string v2, "DisplayRatio"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getDisplayRatio()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 1919
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    if-eqz v2, :cond_148

    .line 1920
    const-string v2, "RenderWidth"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1921
    const-string v2, "RenderHeight"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    goto :goto_16b

    .line 1923
    :cond_148
    const-string v2, "RenderWidth"

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1924
    const-string v2, "RenderHeight"

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1925
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    .line 1927
    :goto_16b
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 1928
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    if-eqz v1, :cond_18d

    .line 1929
    const-string v1, "LayoutWidth"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1930
    const-string v1, "LayoutHeight"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1932
    :cond_18d
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCamOutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    if-eqz v1, :cond_1a9

    .line 1933
    const-string v1, "CamOutWidth"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCamOutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1934
    const-string v1, "CamOutHeight"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCamOutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1936
    :cond_1a9
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCanvasSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    if-eqz v1, :cond_1cf

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCanvasSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 1937
    const-string v1, "CanvasWidth"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCanvasSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1938
    const-string v1, "CanvasHeight"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCanvasSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1940
    :cond_1cf
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v2, "DisplaySettings"

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1941
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 1942
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setDisplaySettings()I

    move-result p0

    return p0
.end method

.method public setDropFrame(I)V
    .registers 2

    return-void
.end method

.method public setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V
    .registers 4

    .line 2355
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2356
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p0, :cond_13

    instance-of v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    if-eqz v1, :cond_13

    .line 2357
    check-cast p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 2359
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public setEffectBgmEnable(Z)V
    .registers 5

    .line 3218
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3219
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda12;-><init>(Lcom/ss/android/vesdk/TERecorder;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3223
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setEffectBgmEnable(Z)V

    return-void
.end method

.method public setEffectMaxMemoryCache(I)I
    .registers 2

    .line 3665
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setEffectMaxMemoryCache(I)I

    move-result p0

    return p0
.end method

.method public setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .registers 2

    .line 3209
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method setEnableAEC(ZLjava/lang/String;)I
    .registers 13

    .line 4345
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v1, "AEC"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    move-result v0

    .line 4346
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v2, "AecModelPath"

    invoke-virtual {v1, v2, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eqz p1, :cond_30

    .line 4348
    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->aecFilterIndex:I

    if-ltz p1, :cond_1c

    .line 4349
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {v3, p1}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    .line 4351
    :cond_1c
    new-instance v7, Lcom/ss/android/vesdk/filterparam/VEAudioAECFilterParam;

    invoke-direct {v7, p2}, Lcom/ss/android/vesdk/filterparam/VEAudioAECFilterParam;-><init>(Ljava/lang/String;)V

    .line 4352
    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->aecFilterIndex:I

    goto :goto_39

    .line 4354
    :cond_30
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->aecFilterIndex:I

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    .line 4355
    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->aecFilterIndex:I

    :goto_39
    if-nez v0, :cond_3f

    if-nez v1, :cond_3f

    const/4 p0, 0x0

    return p0

    :cond_3f
    return v2
.end method

.method public setEnableDuetV2(Z)V
    .registers 6

    .line 4207
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getEnableV2()Z

    move-result v0

    if-ne p1, v0, :cond_b

    goto :goto_6d

    .line 4211
    :cond_b
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEDuetSettings;->setEnableV2(Z)V

    .line 4212
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4213
    :try_start_13
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    if-eqz v1, :cond_69

    .line 4214
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz v1, :cond_30

    if-eqz p1, :cond_30

    instance-of p1, v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    if-eqz p1, :cond_30

    instance-of p1, v1, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;

    if-nez p1, :cond_30

    .line 4215
    check-cast v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    invoke-static {v1}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->moveFrom(Lcom/ss/android/vesdk/proxy/TEDuetProxy;)Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_69

    :catchall_2e
    move-exception p0

    goto :goto_6b

    :cond_30
    if-eqz v1, :cond_35

    .line 4218
    invoke-interface {v1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onDestroy()V

    .line 4220
    :cond_35
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDuetSettings;->getEnableV2()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 4221
    new-instance p1, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    invoke-direct {p1, p0, v1, v2, v3}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_60

    .line 4223
    :cond_4f
    new-instance p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    invoke-direct {p1, p0, v1, v2, v3}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 4225
    :goto_60
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    invoke-interface {p1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    .line 4226
    sget-object p1, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_DUET:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 4229
    :cond_69
    :goto_69
    monitor-exit v0

    return-void

    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_13 .. :try_end_6c} :catchall_2e

    throw p0

    .line 4208
    :cond_6d
    :goto_6d
    const-string p0, "TERecorder"

    const-string p1, "setEnableDuetV2 fail."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnableEarBack(Z)I
    .registers 3

    .line 4362
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableEarBack:Z

    .line 4363
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "EarBack"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public setEnableLoudness(ZI)I
    .registers 5

    .line 4762
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v1, "EnableLoudness"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    if-eqz p1, :cond_10

    .line 4764
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "AudioLoudness"

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setInt(Ljava/lang/String;I)I

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public setExposureCompensation(I)V
    .registers 2

    .line 4968
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_5

    return-void

    .line 4972
    :cond_5
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setExposureCompensation(I)V

    return-void
.end method

.method public setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V
    .registers 7

    .line 4771
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4772
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;FF)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4776
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V

    return-void
.end method

.method public setFaceMakeUp(Ljava/lang/String;)I
    .registers 11

    .line 3591
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 3592
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;-><init>()V

    goto :goto_14

    :goto_1c
    if-eqz v0, :cond_27

    .line 3593
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, -0x1

    :goto_28
    if-nez p1, :cond_2c

    .line 3595
    const-string p1, ""

    :cond_2c
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->resPath:Ljava/lang/String;

    if-ltz v2, :cond_36

    .line 3598
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_41

    .line 3600
    :cond_36
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_41
    if-nez v0, :cond_4c

    .line 3603
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3605
    :cond_4c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setFaceMakeUp(Ljava/lang/String;FF)I
    .registers 13

    .line 3569
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 3570
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;-><init>()V

    goto :goto_14

    :goto_1c
    if-eqz v0, :cond_27

    .line 3571
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, -0x1

    :goto_28
    if-nez p1, :cond_2c

    .line 3573
    const-string p1, ""

    :cond_2c
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->resPath:Ljava/lang/String;

    .line 3574
    iput p2, v6, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->lipIntensity:F

    .line 3575
    iput p3, v6, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->blusherIntensity:F

    if-ltz v2, :cond_3a

    .line 3578
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_45

    .line 3580
    :cond_3a
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_45
    if-nez v0, :cond_50

    .line 3583
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3585
    :cond_50
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setFaceReshape(Ljava/lang/String;FF)I
    .registers 13

    .line 3448
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 3449
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;-><init>()V

    goto :goto_14

    :goto_1c
    if-eqz v0, :cond_27

    .line 3450
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, -0x1

    :goto_28
    if-nez p1, :cond_2c

    .line 3452
    const-string p1, ""

    :cond_2c
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->resPath:Ljava/lang/String;

    .line 3453
    iput p2, v6, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->eyeIntensity:F

    .line 3454
    iput p3, v6, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->cheekIntensity:F

    if-ltz v2, :cond_3a

    .line 3457
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_45

    .line 3459
    :cond_3a
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_45
    if-nez v0, :cond_50

    .line 3462
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3464
    :cond_50
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setFilter(Ljava/lang/String;FZ)I
    .registers 13

    .line 3313
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_15

    .line 3314
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    :goto_13
    move-object v6, v2

    goto :goto_1b

    :cond_15
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;-><init>()V

    goto :goto_13

    :goto_1b
    if-eqz v0, :cond_26

    .line 3315
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_27

    :cond_26
    const/4 v2, -0x1

    :goto_27
    if-nez p1, :cond_2b

    .line 3317
    const-string p1, ""

    :cond_2b
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->leftFilterPath:Ljava/lang/String;

    .line 3318
    iput p2, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->intensity:F

    .line 3319
    iput-boolean p3, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->useFilterResIntensity:Z

    if-ltz v2, :cond_39

    .line 3322
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_4d

    .line 3324
    :cond_39
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    .line 3325
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3327
    :goto_4d
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 13

    .line 3333
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_15

    .line 3334
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    :goto_13
    move-object v6, v2

    goto :goto_1b

    :cond_15
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;-><init>()V

    goto :goto_13

    :goto_1b
    if-eqz v0, :cond_26

    .line 3335
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_27

    :cond_26
    const/4 v2, -0x1

    :goto_27
    if-nez p1, :cond_2b

    .line 3337
    const-string p1, ""

    :cond_2b
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->leftFilterPath:Ljava/lang/String;

    .line 3338
    iput-object p2, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->rightFilterPath:Ljava/lang/String;

    .line 3339
    iput p3, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->position:F

    if-ltz v2, :cond_39

    .line 3342
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_4d

    .line 3344
    :cond_39
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    .line 3345
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3347
    :goto_4d
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFilterNew(Ljava/lang/String;F)I
    .registers 12

    .line 3268
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_15

    .line 3269
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    :goto_13
    move-object v6, v2

    goto :goto_1b

    :cond_15
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;-><init>()V

    goto :goto_13

    :goto_1b
    if-eqz v0, :cond_26

    .line 3270
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_27

    :cond_26
    const/4 v2, -0x1

    .line 3272
    :goto_27
    const-string v3, ""

    if-nez p1, :cond_2c

    move-object p1, v3

    :cond_2c
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->leftFilterPath:Ljava/lang/String;

    .line 3273
    iput-object v3, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->rightFilterPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3274
    iput p1, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->position:F

    .line 3275
    iput p2, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->intensity:F

    .line 3276
    iput p1, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->rightIntensity:F

    const/4 p1, 0x1

    .line 3277
    iput-boolean p1, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->useFilterV3:Z

    if-ltz v2, :cond_42

    .line 3280
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_56

    .line 3282
    :cond_42
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    .line 3283
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3285
    :goto_56
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V
    .registers 15

    .line 3291
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_15

    .line 3292
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    :goto_13
    move-object v6, v2

    goto :goto_1b

    :cond_15
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;-><init>()V

    goto :goto_13

    :goto_1b
    if-eqz v0, :cond_26

    .line 3293
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_27

    :cond_26
    const/4 v2, -0x1

    .line 3295
    :goto_27
    const-string v3, ""

    if-nez p1, :cond_2c

    move-object p1, v3

    :cond_2c
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->leftFilterPath:Ljava/lang/String;

    if-nez p2, :cond_31

    move-object p2, v3

    .line 3296
    :cond_31
    iput-object p2, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->rightFilterPath:Ljava/lang/String;

    .line 3297
    iput p3, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->position:F

    .line 3298
    iput p4, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->intensity:F

    .line 3299
    iput p5, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->rightIntensity:F

    const/4 p1, 0x1

    .line 3300
    iput-boolean p1, v6, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;->useFilterV3:Z

    if-ltz v2, :cond_44

    .line 3303
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_58

    .line 3305
    :cond_44
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    .line 3306
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3308
    :goto_58
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFocus(FF)V
    .registers 6

    .line 4782
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 4783
    :goto_b
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    .line 4784
    :cond_13
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ss/android/vesdk/TERecorder;->setFocus(FFII)V

    return-void
.end method

.method public setFocus(FFII)V
    .registers 11

    .line 4789
    new-instance v0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;

    float-to-int v1, p1

    float-to-int v2, p2

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    .line 4792
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v5, p1, Landroid/util/DisplayMetrics;->density:F

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/VEFocusSettings$Builder;-><init>(IIIIF)V

    .line 4793
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->build()Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object p1

    .line 4794
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V

    return-void
.end method

.method public setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 2

    .line 4799
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 4800
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->focusAtPoint(Lcom/ss/android/vesdk/VEFocusSettings;)I

    return-void

    .line 4802
    :cond_8
    const-string p0, "TERecorder"

    const-string p1, "no Camera capture to setFocus"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFocusWithFaceDetect()V
    .registers 3

    const/4 v0, 0x3

    .line 4809
    filled-new-array {v0}, [I

    move-result-object v0

    .line 4810
    new-instance v1, Lcom/ss/android/vesdk/TERecorder$21;

    invoke-direct {v1, p0, v0}, Lcom/ss/android/vesdk/TERecorder$21;-><init>(Lcom/ss/android/vesdk/TERecorder;[I)V

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/TERecorder;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    return-void
.end method

.method public setFocusWithFaceDetect(Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 3

    const/4 v0, 0x1

    .line 4849
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mUseFaceDetectFocus:Z

    const/4 v0, 0x3

    .line 4850
    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceDetectCount:I

    .line 4851
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;

    .line 4852
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    if-nez p1, :cond_16

    .line 4853
    new-instance p1, Lcom/ss/android/vesdk/TERecorder$22;

    invoke-direct {p1, p0}, Lcom/ss/android/vesdk/TERecorder$22;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 4896
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    :cond_16
    return-void
.end method

.method public setFollowShotDisplayDegree(I)V
    .registers 4

    .line 2095
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2096
    const-string v1, "FollowShotDegree"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2097
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "SetFollowShotDegree"

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setFollowingShotWindowsBackground(IIII)V
    .registers 6

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 2121
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setFollowingShotWindowsBackground(FFFF)V

    return-void
.end method

.method public setForceAlgorithmEnableCount(I)V
    .registers 2

    .line 3249
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setForceAlgorithmEnableCount(I)V

    return-void
.end method

.method public setForceAlgorithmExecuteCount(I)V
    .registers 5

    .line 3234
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3235
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda20;-><init>(Lcom/ss/android/vesdk/TERecorder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3239
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setForceAlgorithmExecuteCount(I)V

    return-void
.end method

.method public setFrameEffectCallback(Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;)V
    .registers 3

    .line 5256
    new-instance v0, Lcom/ss/android/vesdk/TERecorder$24;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TERecorder$24;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;)V

    .line 5262
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setFrameEffectCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IFrameEffectCallback;)V

    return-void
.end method

.method public setHandDetectLowpowerEnable(Z)V
    .registers 5

    .line 3384
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3385
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda28;-><init>(Lcom/ss/android/vesdk/TERecorder;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3389
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setHandDetectLowpowerEnable(Z)V

    return-void
.end method

.method public setImageExposure(F)V
    .registers 11

    .line 5188
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 5189
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEExposureFilterParam;

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEExposureFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEExposureFilterParam;-><init>()V

    goto :goto_14

    :goto_1c
    if-eqz v0, :cond_27

    .line 5190
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, -0x1

    .line 5191
    :goto_28
    iput p1, v6, Lcom/ss/android/vesdk/filterparam/VEExposureFilterParam;->exposure:F

    if-ltz v2, :cond_32

    .line 5194
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_3d

    .line 5196
    :cond_32
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_3d
    if-nez v0, :cond_48

    .line 5200
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5203
    :cond_48
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLandscape(III)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2128
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCurrentLandscape:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    :cond_6
    sub-int/2addr v0, p1

    .line 2132
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_14

    goto :goto_1b

    .line 2136
    :cond_14
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    goto :goto_30

    .line 2134
    :cond_1b
    :goto_1b
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-direct {v0, v2, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    :goto_30
    rsub-int v2, p1, 0x168

    .line 2139
    new-instance v3, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-direct {v3, v4}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>(Lcom/ss/android/vesdk/VEDisplaySettings;)V

    .line 2140
    invoke-virtual {v3, v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 2141
    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setEffectRotation(I)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 2142
    invoke-virtual {v0, p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setTranslateX(I)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p2

    .line 2143
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setTranslateY(I)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p2

    .line 2144
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object p2

    .line 2145
    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    .line 2146
    new-instance p2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-direct {p2, p3, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(ILcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 2147
    invoke-virtual {p2, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setRotate(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    .line 2148
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TERecorder;->changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 2149
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 2150
    const-string p3, "FollowShotDegree"

    invoke-virtual {p2, p3, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2151
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "SetFollowShotDegree"

    invoke-virtual {p3, v0, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 2152
    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCurrentLandscape:I

    return v1
.end method

.method public setLargeMattingModelEnable(Z)V
    .registers 5

    .line 4259
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4260
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda19;-><init>(Lcom/ss/android/vesdk/TERecorder;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4264
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setLargeMattingModelEnable(Z)V

    return-void
.end method

.method public setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
    .registers 6

    .line 5115
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5116
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->callbackMap:Ljava/util/HashMap;

    iget v2, p1, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5117
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_81

    .line 5118
    new-instance p2, Lcom/ss/android/vesdk/TERecorder$23;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/TERecorder$23;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    .line 5140
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setLensCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;)V

    .line 5142
    iget p2, p1, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    const/16 v0, 0xf

    if-eq p2, v0, :cond_73

    const/4 v0, 0x1

    const/16 v1, 0x15

    if-eq p2, v1, :cond_62

    const/16 v1, 0x18

    if-eq p2, v1, :cond_54

    packed-switch p2, :pswitch_data_84

    return-void

    .line 5170
    :pswitch_2c
    check-cast p1, Lcom/ss/android/vesdk/lens/VERhythmicMotionParam;

    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/lens/VERhythmicMotionParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 5171
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p2, "RhythmicMotion"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void

    .line 5161
    :pswitch_3a
    check-cast p1, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;

    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 5162
    iget-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedSetFirstFrame:Z

    if-eqz p2, :cond_4c

    .line 5163
    const-string p2, "IsFirstFrame"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    const/4 p2, 0x0

    .line 5164
    iput-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedSetFirstFrame:Z

    .line 5166
    :cond_4c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p2, "oneKeyProcess"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void

    .line 5150
    :cond_54
    check-cast p1, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;

    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 5151
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p2, "asf"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void

    .line 5144
    :cond_62
    check-cast p1, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;

    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 5145
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v2, "taintSceneDetect"

    invoke-virtual {p2, v2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 5146
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/vesdk/TERecorder;->enableLensProcess(IZ)V

    return-void

    .line 5156
    :cond_73
    :pswitch_73
    check-cast p1, Lcom/ss/android/vesdk/lens/VELumaDetectParams;

    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/lens/VELumaDetectParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 5157
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p2, "lumaDetect"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void

    :catchall_81
    move-exception p0

    .line 5117
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0

    :pswitch_data_84
    .packed-switch 0x1b
        :pswitch_73
        :pswitch_3a
        :pswitch_2c
    .end packed-switch
.end method

.method public setMaleMakeupState(Z)I
    .registers 12

    const/16 v0, 0x1a

    .line 4167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4163
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnablePassEffectWhenNoEffectFilter()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return v2

    .line 4167
    :cond_10
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_20

    .line 4168
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;

    :goto_1e
    move-object v7, v3

    goto :goto_26

    :cond_20
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;-><init>()V

    goto :goto_1e

    :goto_26
    if-eqz v1, :cond_31

    .line 4169
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_32

    :cond_31
    const/4 v3, -0x1

    .line 4171
    :goto_32
    iput-boolean p1, v7, Lcom/ss/android/vesdk/filterparam/VEMakeUpFilterParam;->maleMakeupState:Z

    if-ltz v3, :cond_3c

    .line 4174
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v3, v7}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_47

    .line 4176
    :cond_3c
    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v6, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v3

    :goto_47
    if-nez v1, :cond_52

    .line 4179
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v7, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4181
    :cond_52
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public setMusicNodes(Ljava/lang/String;)V
    .registers 2

    .line 1688
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setMusicNodes(Ljava/lang/String;)I

    return-void
.end method

.method public setOnErrorListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 4

    .line 641
    const-string v0, "TERecorder"

    const-string v1, "setOnErrorListener..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mErrorMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    return-void
.end method

.method public setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V
    .registers 7

    .line 4715
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V

    .line 4717
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 4719
    const-string v1, "EnableFrameScreenInfo"

    if-eqz p1, :cond_2c

    .line 4720
    invoke-interface {p1}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->config()Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 4722
    iget-object v2, v2, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    sget-object v3, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_28

    .line 4723
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    new-instance v2, Lcom/ss/android/vesdk/TERecorder$20;

    invoke-direct {v2, p0, p1}, Lcom/ss/android/vesdk/TERecorder$20;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setBufferedFrameListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;)V

    .line 4731
    const-string p1, "NeedYUV420"

    invoke-virtual {v0, p1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    goto :goto_36

    .line 4733
    :cond_28
    invoke-virtual {v0, v1, v4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    goto :goto_36

    .line 4737
    :cond_2c
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCallbackClient:Lcom/ss/android/ttve/nativePort/TECallbackClient;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->setBufferedFrameListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;)V

    const/4 p1, 0x0

    .line 4738
    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 4740
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "OnFrameAvailable"

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 4

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnInfoListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 649
    :goto_1d
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->enableTimestampCallback(Z)V

    return-void
.end method

.method public setPaddingBottomInRatio34(F)V
    .registers 4

    .line 5301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPaddingBottomInRatio34 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mViewportPaddingBottomInRadio34:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5302
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setPaddingBottomInRatio34(F)V

    .line 5304
    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_39

    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_38

    goto :goto_39

    :cond_38
    return-void

    .line 5305
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mViewportPaddingBottomInRadio34:F

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder;->mPaddingBottomInRatio34Offset:F

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 5306
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 5307
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 5308
    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setTranslateY(I)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p1

    sget-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 5309
    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p1

    .line 5310
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object p1

    .line 5312
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    if-eqz v0, :cond_6c

    .line 5313
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    return-void

    .line 5315
    :cond_6c
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    return-void
.end method

.method public setPreviewDuetVideoPaused(Z)V
    .registers 2

    return-void
.end method

.method public setPreviewRatio(IFLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1716
    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    .line 1717
    iput-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 1718
    sget-object p2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_19

    sget-object p2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_17

    goto :goto_19

    :cond_17
    move p2, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move p2, v0

    .line 1719
    :goto_1a
    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRoundFilterIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    sget-object v2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq p1, v2, :cond_30

    .line 1720
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v4, p0, Lcom/ss/android/vesdk/TERecorder;->mRoundFilterIndex:I

    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    .line 1721
    iput v3, p0, Lcom/ss/android/vesdk/TERecorder;->mRoundFilterIndex:I

    .line 1723
    :cond_30
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1724
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz v2, :cond_4d

    iget-boolean v4, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    if-eqz v4, :cond_4d

    invoke-interface {v2}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VECameraSettings;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    move v2, v0

    goto :goto_4e

    :cond_4d
    move v2, v1

    :goto_4e
    if-eqz v2, :cond_5d

    .line 1726
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->stopRender(Z)V

    .line 1727
    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {v4, p3}, Lcom/ss/android/vesdk/camera/ICameraCapture;->changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z

    const/16 v4, 0xff

    .line 1728
    invoke-virtual {p0, v1, v1, v1, v4}, Lcom/ss/android/vesdk/TERecorder;->clearDisplayColor(IIII)V

    :cond_5d
    if-eqz p2, :cond_da

    .line 1731
    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    sget p2, Lcom/ss/android/vesdk/TERecorder;->FLAG_SET_PREVIEW_RADIO:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    and-int/lit8 p2, p1, 0x3

    if-lez p2, :cond_8d

    .line 1733
    iget-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    if-eqz p2, :cond_8d

    .line 1734
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    invoke-direct {p0, p4, p1}, Lcom/ss/android/vesdk/TERecorder;->aspectRenderSizeToAnotherSize(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    .line 1735
    new-instance p2, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    .line 1736
    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 1737
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p2

    .line 1738
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object p2

    .line 1739
    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    .line 1740
    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    goto :goto_c9

    .line 1741
    :cond_8d
    iget-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    if-nez p2, :cond_c8

    and-int/lit8 p1, p1, 0x3

    if-lez p1, :cond_c8

    .line 1743
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    invoke-direct {p0, p4, p1}, Lcom/ss/android/vesdk/TERecorder;->aspectRenderSizeToAnotherSize(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    .line 1744
    new-instance p2, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    .line 1745
    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p2

    sget-object p4, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 1746
    invoke-virtual {p2, p4}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p2

    .line 1747
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 1748
    new-instance p2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {p2, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    iget p4, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iget v0, p1, Lcom/ss/android/vesdk/VESize;->height:I

    .line 1749
    invoke-virtual {p2, p4, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 1750
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 1751
    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraPreviewSize:Lcom/ss/android/vesdk/VESize;

    .line 1752
    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    goto :goto_c9

    :cond_c8
    const/4 p1, 0x0

    :goto_c9
    if-eqz p1, :cond_159

    .line 1757
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result p2

    if-eqz p2, :cond_159

    .line 1758
    iget p2, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {p0, p2, p1}, Lcom/ss/android/vesdk/TERecorder;->changeVideoOutputSizeViaInner(II)V

    goto/16 :goto_159

    .line 1761
    :cond_da
    sget-object p2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne p1, v4, :cond_fc

    iget v4, p0, Lcom/ss/android/vesdk/TERecorder;->mRoundFilterIndex:I

    if-ne v4, v3, :cond_fc

    .line 1762
    new-instance v8, Lcom/ss/android/vesdk/filterparam/VERoundFilterParam;

    invoke-direct {v8}, Lcom/ss/android/vesdk/filterparam/VERoundFilterParam;-><init>()V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1763
    iput v4, v8, Lcom/ss/android/vesdk/filterparam/VERoundFilterParam;->radius:F

    .line 1764
    iget-object v5, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v7, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v4

    iput v4, p0, Lcom/ss/android/vesdk/TERecorder;->mRoundFilterIndex:I

    .line 1770
    :cond_fc
    sget-object v4, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq p1, v4, :cond_10a

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_112

    .line 1771
    :cond_10a
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->width:I

    if-nez p1, :cond_112

    .line 1772
    iput v3, p0, Lcom/ss/android/vesdk/TERecorder;->mTranslateYInRatio11OrRound:I

    .line 1778
    :cond_112
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    if-eqz p1, :cond_12d

    .line 1779
    new-instance p1, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    .line 1780
    invoke-virtual {p1, p4}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p1

    sget-object p2, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 1781
    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p1

    .line 1782
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object p1

    .line 1783
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    goto :goto_157

    .line 1786
    :cond_12d
    new-instance p1, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    .line 1787
    invoke-virtual {p1, p4}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p1

    sget-object p2, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 1788
    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p1

    .line 1789
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 1790
    new-instance p1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    iget p2, p4, Lcom/ss/android/vesdk/VESize;->width:I

    iget p4, p4, Lcom/ss/android/vesdk/VESize;->height:I

    .line 1791
    invoke-virtual {p1, p2, p4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 1792
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 1793
    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraPreviewSize:Lcom/ss/android/vesdk/VESize;

    .line 1795
    :goto_157
    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    :cond_159
    :goto_159
    if-eqz v2, :cond_15e

    .line 1798
    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/TERecorder;->stopRender(Z)V

    .line 1800
    :cond_15e
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setPreviewRotation(I)V
    .registers 2

    return-void
.end method

.method public setReactPosMarginInVideoRecordPixel(IIII)V
    .registers 5

    return-void
.end method

.method public setReactionBorderParam(II)V
    .registers 3

    return-void
.end method

.method public setReactionMaskImagePath(Ljava/lang/String;Z)Z
    .registers 3

    .line 2437
    const-string p0, "TERecorder"

    const-string p1, "setReactionMaskImagePath"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setRecordBGM(Ljava/lang/String;JJI)I
    .registers 15

    .line 1810
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getRecordStatus()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->RECORDING:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_f

    const/16 p0, -0x69

    return p0

    :cond_f
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 1814
    invoke-super/range {v0 .. v6}, Lcom/ss/android/vesdk/TERecorderBase;->setRecordBGM(Ljava/lang/String;JJI)I

    move-object p1, v0

    .line 1815
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_6f

    .line 1816
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    .line 1817
    iget p2, p1, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    if-ltz p2, :cond_6f

    .line 1818
    const-string p3, "TrackIndex"

    invoke-virtual {p0, p3, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1819
    const-string p2, "TrackType"

    invoke-virtual {p0, p2, v0}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1820
    iget-object p2, p1, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p3, "RemoveTrack"

    invoke-virtual {p2, p3, p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    const/4 p2, -0x1

    if-nez p0, :cond_61

    .line 1822
    iget-object p3, p1, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1823
    :try_start_3f
    iget-object p4, p1, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p4, :cond_5b

    instance-of p4, p4, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    if-eqz p4, :cond_5b

    .line 1824
    iget-object p4, p1, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p5, "FocusSingleAudioTrack"

    invoke-virtual {p4, p5, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 1825
    iget-object p4, p1, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    check-cast p4, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    iget p5, p1, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    invoke-virtual {p4, p5}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->removeRecordBGM(I)I

    goto :goto_5b

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_5f

    .line 1827
    :cond_5b
    :goto_5b
    monitor-exit p3
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_58

    .line 1828
    iput p2, p1, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    goto :goto_61

    .line 1827
    :goto_5f
    :try_start_5f
    monitor-exit p3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_58

    throw p0

    .line 1830
    :cond_61
    :goto_61
    iget-object p3, p1, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p3}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableAudioGraphRefactor()Z

    move-result p3

    if-eqz p3, :cond_6e

    .line 1831
    iget p3, p1, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    invoke-virtual {p1, p3, v0, p2, p2}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    :cond_6e
    return p0

    .line 1836
    :cond_6f
    invoke-direct {p1}, Lcom/ss/android/vesdk/TERecorder;->isVideoBgMode()Z

    move-result p0

    const/4 v7, 0x0

    if-eqz p0, :cond_7d

    .line 1837
    iget-object p0, p1, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p2, "FocusSingleAudioTrack"

    invoke-virtual {p0, p2, v7}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 1839
    :cond_7d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1840
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    long-to-int p0, v2

    .line 1842
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    long-to-int p0, v4

    .line 1844
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1845
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 1846
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v6, v0, :cond_b1

    move p6, v0

    goto :goto_b2

    :cond_b1
    move p6, v7

    .line 1848
    :goto_b2
    invoke-virtual/range {p1 .. p6}, Lcom/ss/android/vesdk/TERecorder;->setAudioStreamInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)I

    move-result p0

    .line 1849
    iget-object p2, p1, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/TERecorderContext;->isEnableAudioGraphRefactor()Z

    move-result p2

    if-eqz p2, :cond_c5

    if-nez p0, :cond_c5

    .line 1850
    iget p2, p1, Lcom/ss/android/vesdk/TERecorder;->mBGMTrackIndex:I

    invoke-virtual {p1, p2, v0, v0, v7}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    :cond_c5
    return p0
.end method

.method public setRecordMaxDuration(J)V
    .registers 5

    .line 4551
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "video_duration_opt"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 4552
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_25

    .line 4553
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_2f

    .line 4556
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "RecordMaxDuration"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setLong(Ljava/lang/String;J)I

    :cond_2f
    return-void
.end method

.method public setRecordPrepareTime(J)I
    .registers 4

    .line 2228
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "RecordPrepareTime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setLong(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public setRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 4693
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->addRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    .line 4695
    :cond_5
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->removeRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    .line 4696
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    return-void
.end method

.method public setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 4021
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4022
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda8;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4026
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 4010
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4011
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda22;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4015
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReshapeIntensity(IF)I
    .registers 6

    .line 3470
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/16 v1, -0x69

    if-nez v0, :cond_13

    return v1

    .line 3475
    :cond_13
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    .line 3476
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_22

    return v1

    :cond_22
    const/4 v1, 0x4

    if-ne p1, v1, :cond_28

    .line 3483
    iput p2, v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->eyeIntensity:F

    goto :goto_2d

    :cond_28
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2d

    .line 3485
    iput p2, v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->cheekIntensity:F

    .line 3488
    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public setReshapeIntensityDict(Ljava/util/Map;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 3513
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/16 v1, -0x69

    if-nez v0, :cond_13

    return v1

    .line 3518
    :cond_13
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    .line 3519
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_22

    return v1

    .line 3525
    :cond_22
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3526
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_50

    .line 3527
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->eyeIntensity:F

    goto :goto_2a

    .line 3528
    :cond_50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2a

    .line 3529
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->cheekIntensity:F

    goto :goto_2a

    .line 3533
    :cond_6a
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public setReshapeParam(Ljava/lang/String;Ljava/util/Map;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 3538
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 3539
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;-><init>()V

    goto :goto_14

    :goto_1c
    if-eqz v0, :cond_27

    .line 3540
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, -0x1

    :goto_28
    if-nez p1, :cond_2c

    .line 3542
    const-string p1, ""

    :cond_2c
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->resPath:Ljava/lang/String;

    .line 3544
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 3545
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5c

    .line 3546
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, v6, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->eyeIntensity:F

    goto :goto_36

    .line 3547
    :cond_5c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_36

    .line 3548
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, v6, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->cheekIntensity:F

    goto :goto_36

    :cond_76
    if-ltz v2, :cond_7e

    .line 3553
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_89

    .line 3555
    :cond_7e
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_89
    if-nez v0, :cond_94

    .line 3558
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3560
    :cond_94
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setReshapeResource(Ljava/lang/String;)I
    .registers 11

    .line 3493
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 3494
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;-><init>()V

    goto :goto_14

    :goto_1c
    if-eqz v0, :cond_27

    .line 3495
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, -0x1

    :goto_28
    if-nez p1, :cond_2c

    .line 3497
    const-string p1, ""

    :cond_2c
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;->resPath:Ljava/lang/String;

    if-ltz v2, :cond_36

    .line 3500
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_41

    .line 3502
    :cond_36
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_41
    if-nez v0, :cond_4c

    .line 3505
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3507
    :cond_4c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V
    .registers 2

    .line 5180
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V

    .line 5181
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 5182
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V

    :cond_a
    return-void
.end method

.method public setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)I
    .registers 3

    .line 5215
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)I

    move-result p0

    return p0
.end method

.method public setScanArea(FFFF)V
    .registers 5

    .line 4147
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEEffect;->setScanArea(FFFF)V

    return-void
.end method

.method public setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V
    .registers 2

    .line 5060
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V

    .line 5061
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 5062
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V

    :cond_a
    return-void
.end method

.method public setSharedTextureStatus(Z)Z
    .registers 2

    .line 3618
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setSharedTextureStatus(Z)Z

    move-result p0

    return p0
.end method

.method public setSkinTone(Ljava/lang/String;)I
    .registers 11

    .line 3718
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 3719
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;-><init>()V

    goto :goto_14

    :goto_1c
    if-eqz v0, :cond_27

    .line 3720
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, -0x1

    .line 3722
    :goto_28
    iput-object p1, v6, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->skinTonePath:Ljava/lang/String;

    if-ltz v2, :cond_32

    .line 3725
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v2, v6}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_3d

    .line 3727
    :cond_32
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v5, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_3d
    if-nez v0, :cond_48

    .line 3731
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3733
    :cond_48
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setSkinToneIntensity(F)I
    .registers 6

    .line 3739
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_1a

    .line 3741
    const-string p0, "TERecorder"

    const-string p1, "Set skin tone resource first pls."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 3744
    :cond_1a
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;

    .line 3745
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3746
    iput p1, v2, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;->skinToneIntensity:F

    .line 3747
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p1, v3, v2}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 3748
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
    .registers 5

    .line 3778
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3779
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda10;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3783
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V

    return-void
.end method

.method public setSwapDuetRegion(Z)V
    .registers 2

    return-void
.end method

.method public setSwapReactionRegion(Z)V
    .registers 2

    .line 2449
    const-string p0, "TERecorder"

    const-string p1, "setSwapReactionRegion"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTrackSpeed(IIF)I
    .registers 6

    .line 4653
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 4654
    const-string v1, "TrackIndex"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 4655
    const-string p1, "TrackType"

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 4656
    const-string p1, "TrackSpeed"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 4657
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I
    .registers 5

    .line 4130
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4131
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda25;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEEffectParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    .line 4136
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public setVideoBgSpeed(D)V
    .registers 5

    .line 2457
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2458
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p0, :cond_14

    instance-of v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    if-eqz v1, :cond_14

    .line 2459
    check-cast p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->updateSpeed(F)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    .line 2461
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method public setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V
    .registers 6

    .line 2053
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V

    .line 2054
    iget v0, p1, Lcom/ss/android/vesdk/VEVolumeParam;->trackIndex:I

    const-string v1, "setVolume"

    if-ltz v0, :cond_21

    .line 2055
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2056
    const-string v2, "Volume"

    iget v3, p1, Lcom/ss/android/vesdk/VEVolumeParam;->bgmPlayVolume:F

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setFloat(Ljava/lang/String;F)I

    .line 2057
    const-string v2, "TrackIndex"

    iget p1, p1, Lcom/ss/android/vesdk/VEVolumeParam;->trackIndex:I

    invoke-virtual {v0, v2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2058
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void

    .line 2060
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    iget p1, p1, Lcom/ss/android/vesdk/VEVolumeParam;->bgmPlayVolume:F

    invoke-virtual {p0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setFloat(Ljava/lang/String;F)I

    return-void
.end method

.method public setWaterMark(Lcom/ss/android/vesdk/VEWatermarkParam;)V
    .registers 2

    .line 5221
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setWaterMark(Lcom/ss/android/vesdk/VEWatermarkParam;)V

    .line 5222
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setWaterMarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)V

    return-void
.end method

.method public shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)I
    .registers 22

    move/from16 v1, p2

    .line 2727
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "TERecorder"

    if-eqz v2, :cond_19

    .line 2728
    const-string p0, "Last screenshot not complete"

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    move-object/from16 v10, p4

    .line 2729
    invoke-interface {v10, v3, p0}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return p0

    :cond_19
    move-object/from16 v10, p4

    .line 2732
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x0

    if-eqz p3, :cond_28

    if-eqz p5, :cond_28

    move v11, v13

    goto :goto_29

    :cond_28
    move v11, v2

    .line 2734
    :goto_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2736
    new-instance v5, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v5, p1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 2737
    iget-boolean v8, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz v8, :cond_70

    iget-object v8, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    if-eqz v8, :cond_70

    .line 2739
    new-instance v8, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v8, p1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 2740
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 2741
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    if-lez v1, :cond_70

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    if-lez v1, :cond_70

    .line 2742
    invoke-direct {p0, v8, v0}, Lcom/ss/android/vesdk/TERecorder;->aspectRenderSizeToAnotherSize(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 2743
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    if-lez v1, :cond_5c

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    if-lez v1, :cond_5c

    goto :goto_71

    .line 2746
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aspect shot screen size err: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    move-object v0, v5

    .line 2751
    :goto_71
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->isSyncCapture()Z

    move-result v8

    if-eqz v8, :cond_83

    .line 2752
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v3, v0, Lcom/ss/android/vesdk/VESize;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_83
    move-object v9, v3

    .line 2754
    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->NO_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    .line 2755
    iget v3, p0, Lcom/ss/android/vesdk/TERecorder;->mMirrorMode:I

    if-nez v3, :cond_8b

    goto :goto_95

    :cond_8b
    if-ne v3, v13, :cond_90

    .line 2758
    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->X_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    goto :goto_95

    :cond_90
    const/4 v4, 0x2

    if-ne v3, v4, :cond_95

    .line 2760
    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->Y_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    .line 2763
    :cond_95
    :goto_95
    new-instance v4, Lcom/ss/android/vesdk/TERecorder$13;

    move-object v5, p0

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcom/ss/android/vesdk/TERecorder$13;-><init>(Lcom/ss/android/vesdk/TERecorder;JZLandroid/graphics/Bitmap;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;)V

    if-eqz v8, :cond_e5

    .line 2792
    new-instance v2, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    .line 2793
    iget-boolean v3, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedTwoFrame:Z

    if-eqz v3, :cond_ab

    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    goto :goto_ad

    :cond_ab
    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->HD_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    :goto_ad
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v2

    .line 2794
    invoke-virtual {v2, v13}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v2

    if-eqz p3, :cond_ba

    .line 2795
    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->FULL_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    goto :goto_bc

    :cond_ba
    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->NO_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    :goto_bc
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v2

    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 2796
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v2

    .line 2797
    invoke-virtual {v2, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2798
    invoke-virtual {v0, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2799
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setMirrorMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2800
    invoke-virtual {v0, v9}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDirectBitmap(Landroid/graphics/Bitmap;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedDelay:Z

    .line 2801
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setNeedDelay(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2802
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object v0

    .line 2803
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    move-result p0

    return p0

    .line 2805
    :cond_e5
    new-instance v3, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    sget-object v6, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->RENDER_PICTURE_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 2806
    invoke-virtual {v3, v6}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v3

    .line 2807
    invoke-virtual {v3, v13}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v3

    if-eqz p3, :cond_f9

    .line 2808
    sget-object v6, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->FULL_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    goto :goto_fb

    :cond_f9
    sget-object v6, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->NO_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    :goto_fb
    invoke-virtual {v3, v6}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v3

    sget-object v10, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 2809
    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v3

    .line 2810
    invoke-virtual {v3, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2811
    invoke-virtual {v0, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2812
    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setNeedProcessAsCameraFrame(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2813
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setMirrorMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2814
    invoke-virtual {v0, v9}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDirectBitmap(Landroid/graphics/Bitmap;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2815
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object v9

    .line 2816
    new-instance v4, Lcom/ss/android/vesdk/TERecorder$14;

    move-object v5, p0

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move v7, v11

    invoke-direct/range {v4 .. v9}, Lcom/ss/android/vesdk/TERecorder$14;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    .line 2831
    new-instance v0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 2832
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2833
    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->NO_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    .line 2834
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2835
    invoke-virtual {v0, v10}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2836
    invoke-virtual {v0, v4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedDelay:Z

    .line 2837
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setNeedDelay(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object v0

    .line 2838
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object v0

    .line 2839
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    move-result p0

    return p0
.end method

.method public shotScreen(IIZZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)I
    .registers 15

    .line 2679
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2680
    const-string p0, "TERecorder"

    const-string p1, "Last screenshot not complete"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 2681
    invoke-interface {p5, v1, p0}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return p0

    .line 2685
    :cond_15
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isSyncCapture()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 2686
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_23
    move-object v7, v1

    .line 2688
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2690
    new-instance v2, Lcom/ss/android/vesdk/TERecorder$12;

    move-object v3, p0

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/ss/android/vesdk/TERecorder$12;-><init>(Lcom/ss/android/vesdk/TERecorder;JZLandroid/graphics/Bitmap;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V

    .line 2712
    new-instance p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    sget-object p5, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 2713
    invoke-virtual {p0, p5}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    .line 2714
    invoke-virtual {p0, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    if-eqz p4, :cond_49

    .line 2715
    sget-object p3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->FULL_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    goto :goto_4b

    :cond_49
    sget-object p3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->NO_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    :goto_4b
    invoke-virtual {p0, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    sget-object p3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 2716
    invoke-virtual {p0, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    new-instance p3, Lcom/ss/android/vesdk/VESize;

    invoke-direct {p3, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 2717
    invoke-virtual {p0, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    .line 2718
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    .line 2719
    invoke-virtual {p0, v7}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDirectBitmap(Landroid/graphics/Bitmap;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    iget-boolean p1, v3, Lcom/ss/android/vesdk/TERecorder;->mNeedDelay:Z

    .line 2720
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setNeedDelay(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p0

    .line 2721
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object p0

    .line 2722
    invoke-virtual {v3, p0}, Lcom/ss/android/vesdk/TERecorder;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    move-result p0

    return p0
.end method

.method public shotScreen(Lcom/ss/android/vesdk/VEShotScreenSettings;)I
    .registers 13

    .line 2846
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedDelay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedDelay:Z

    .line 2847
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedTwoFrame()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedTwoFrame:Z

    .line 2848
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 2849
    const-string v1, "TERecorder"

    if-nez v0, :cond_1c

    .line 2850
    const-string p0, "size is null, can not shotscreen"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 2855
    :cond_1c
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getBitmapCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 2856
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getFrameCallback()Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 2857
    iget v3, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v4, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getBitmapCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedOriginPic()Z

    move-result v7

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getFrameCallback()Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    move-result-object v8

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isEnableUpscaleShot()Z

    move-result v9

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/ss/android/vesdk/TERecorder;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)I

    move-result p0

    return p0

    :cond_46
    move-object v2, p0

    .line 2859
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    move-object p0, v0

    move-object v0, v2

    iget v2, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedPreviewAfterShotScreen()Z

    move-result v3

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getBitmapCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/TERecorder;->shotScreen(IIZZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)I

    move-result p0

    return p0

    :cond_5e
    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    .line 2861
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getScreenCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 2862
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getFileName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v3, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedPreviewAfterShotScreen()Z

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getScreenCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/vesdk/TERecorder;->shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)I

    move-result p0

    return p0

    .line 2864
    :cond_84
    const-string p0, "All screenshot callback are null"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)I
    .registers 10

    .line 2611
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2612
    const-string p0, "TERecorder"

    const-string p1, "Last screenshot not complete"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 2613
    invoke-interface {p7, p0}, Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;->onShotScreen(I)V

    return p0

    .line 2616
    :cond_14
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2617
    new-instance v0, Lcom/ss/android/vesdk/TERecorder$11;

    invoke-direct {v0, p0, p7, p1, p6}, Lcom/ss/android/vesdk/TERecorder$11;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 2660
    new-instance p1, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>()V

    sget-object p6, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 2661
    invoke-virtual {p1, p6}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    .line 2662
    invoke-virtual {p1, p4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    if-eqz p5, :cond_33

    .line 2663
    sget-object p4, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->FULL_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    goto :goto_35

    :cond_33
    sget-object p4, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->NO_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    :goto_35
    invoke-virtual {p1, p4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    sget-object p4, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 2664
    invoke-virtual {p1, p4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    new-instance p4, Lcom/ss/android/vesdk/VESize;

    invoke-direct {p4, p2, p3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 2665
    invoke-virtual {p1, p4}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    .line 2666
    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder;->mNeedDelay:Z

    .line 2667
    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setNeedDelay(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    move-result-object p1

    .line 2668
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->build()Lcom/ss/android/vesdk/VEGetFrameSettings;

    move-result-object p1

    .line 2669
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    move-result p0

    return p0
.end method

.method public shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Z)I
    .registers 9

    .line 2674
    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/vesdk/TERecorder;->shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)I

    move-result p0

    return p0
.end method

.method public slamDeviceConfig(ZZZZ)I
    .registers 5

    .line 3804
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEEffect;->slamDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public slamGetTextBitmap(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)I
    .registers 2

    .line 3953
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->slamGetTextBitmap(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextLimitCount(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
    .registers 2

    .line 3936
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->slamGetTextLimitCount(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
    .registers 5

    .line 3941
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3942
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda29;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    .line 3947
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I

    move-result p0

    return p0
.end method

.method public slamNotifyHideKeyBoard(Z)I
    .registers 2

    .line 3926
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->slamNotifyHideKeyBoard(Z)I

    move-result p0

    return p0
.end method

.method public slamProcessDoubleClickEvent(FF)I
    .registers 5

    .line 3908
    sget-object v0, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->DB_CLICK:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    sget-object v1, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->TAP:Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/vesdk/gesture/VEGesture;->createTouchWithGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;FF)Lcom/ss/android/vesdk/gesture/VEGesture;

    move-result-object p1

    .line 3909
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string v0, "ve_enable_recorder_lowmem_async_mode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 3910
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda1;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    .line 3915
    :cond_24
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestAcc(DDDD)I
    .registers 9

    .line 3822
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/vesdk/VEEffect;->slamProcessIngestAcc(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGra(DDDD)I
    .registers 9

    .line 3832
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/vesdk/VEEffect;->slamProcessIngestGra(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGyr(DDDD)I
    .registers 9

    .line 3827
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/vesdk/VEEffect;->slamProcessIngestGyr(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestOri([DD)I
    .registers 4

    .line 3837
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->slamProcessIngestOri([DD)I

    move-result p0

    return p0
.end method

.method public slamProcessPanEvent(FFFFF)I
    .registers 6

    .line 3869
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ss/android/vesdk/gesture/VEGesture;->createPanEvent(FFFFF)Lcom/ss/android/vesdk/gesture/VEGesture;

    move-result-object p1

    .line 3870
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string p3, "ve_enable_recorder_lowmem_async_mode"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 3871
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda0;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p4

    .line 3876
    :cond_20
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    move-result p0

    return p0
.end method

.method public slamProcessRotationEvent(FF)I
    .registers 5

    .line 3895
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/gesture/VEGesture;->createRotateEvent(FF)Lcom/ss/android/vesdk/gesture/VEGesture;

    move-result-object p1

    .line 3896
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string v0, "ve_enable_recorder_lowmem_async_mode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 3897
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda11;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    .line 3902
    :cond_20
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    move-result p0

    return p0
.end method

.method public slamProcessScaleEvent(FF)I
    .registers 5

    .line 3882
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/gesture/VEGesture;->createScaleEvent(FF)Lcom/ss/android/vesdk/gesture/VEGesture;

    move-result-object p1

    .line 3883
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string v0, "ve_enable_recorder_lowmem_async_mode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 3884
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda3;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    .line 3889
    :cond_20
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEventByType(IFFI)I
    .registers 6

    if-nez p1, :cond_5

    .line 3844
    sget-object p1, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->TOUCH_DOWN:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    goto :goto_16

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 3846
    sget-object p1, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->PAN:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    goto :goto_16

    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 3848
    sget-object p1, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->TOUCH_UP:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    goto :goto_16

    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_43

    .line 3850
    sget-object p1, Lcom/ss/android/vesdk/gesture/VEGesture$EventType;->TOUCH_LONG:Lcom/ss/android/vesdk/gesture/VEGesture$EventType;

    .line 3855
    :goto_16
    invoke-static {}, Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;->values()[Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;

    move-result-object v0

    aget-object p4, v0, p4

    invoke-static {p1, p4, p2, p3}, Lcom/ss/android/vesdk/gesture/VEGesture;->createTouchWithGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture$EventType;Lcom/ss/android/vesdk/gesture/VEGesture$GestureType;FF)Lcom/ss/android/vesdk/gesture/VEGesture;

    move-result-object p1

    .line 3857
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string p3, "ve_enable_recorder_lowmem_async_mode"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 3858
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda17;

    invoke-direct {p3, p0, p1}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda17;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/gesture/VEGesture;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p4

    .line 3863
    :cond_3c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->processGestureEvent(Lcom/ss/android/vesdk/gesture/VEGesture;)I

    move-result p0

    return p0

    :cond_43
    const/16 p0, -0x64

    return p0
.end method

.method public slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I
    .registers 5

    .line 3921
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEEffect;->slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetLanguage(Ljava/lang/String;)I
    .registers 2

    .line 3931
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->slamSetLanguage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public startAudioRecorder()V
    .registers 2

    const/4 v0, 0x0

    .line 1596
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 1585
    const-string v0, "TERecorder"

    const-string v1, "start audio Record"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    const/4 p1, 0x1

    .line 1588
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->enableAudio(Z)V

    .line 1589
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->startAudioCaptureIfNeed()I

    .line 1590
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iput-boolean p1, v0, Lcom/ss/android/vesdk/TERecorderContext;->audioCapturingForSomeScenes:Z

    .line 1591
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "AudioCapturingForSomeScenes"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    return-void
.end method

.method public startCameraPreview(Lcom/ss/android/vesdk/camera/ICameraPreview;)V
    .registers 4

    .line 966
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;

    .line 967
    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 968
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    if-eqz p0, :cond_13

    .line 969
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/camera/TECamera;->start(Lcom/ss/android/vesdk/camera/ICameraPreview;)I

    :cond_13
    return-void

    :cond_14
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x41b

    .line 972
    invoke-direct {p0, v1, p1, v0}, Lcom/ss/android/vesdk/TERecorder;->postOnRenderThread(IIF)I

    return-void
.end method

.method public startFollowingShotPreview(Landroid/view/Surface;)I
    .registers 2

    .line 2102
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->startFollowingShotPreview(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public startPlayTrack(II)I
    .registers 10

    .line 4633
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setPlayTrackStatus(IIIJZ)I

    move-result p0

    return p0
.end method

.method public startPlayTrack(IIZ)I
    .registers 11

    .line 4638
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setPlayTrackStatus(IIIJZ)I

    move-result p0

    return p0
.end method

.method public startPrePlay(Lcom/ss/android/vesdk/model/VEPrePlayParams;)I
    .registers 4

    .line 2240
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/model/VEPrePlayParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 2241
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v1, "PrePlayParams"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 2242
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->startPrePlay()I

    move-result p0

    return p0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .registers 6

    .line 1039
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1040
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/camera/TECamera;->setEnableCameraNotify(Z)V

    .line 1042
    :cond_8
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setSurface(Landroid/view/Surface;)V

    .line 1043
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->startPreview(Landroid/view/Surface;)I

    move-result p1

    .line 1044
    const-string v0, "te_record_start_preview_ret"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    const/16 v0, 0x3fc

    .line 1045
    const-string v1, "You can replace the Res Manager here."

    invoke-direct {p0, v0, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    .line 1046
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1047
    :try_start_22
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-nez v0, :cond_83

    .line 1048
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_67

    .line 1049
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getEnableV2()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1050
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_5d

    :catchall_4a
    move-exception p0

    goto :goto_85

    .line 1052
    :cond_4c
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 1054
    :goto_5d
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    invoke-interface {v0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    .line 1055
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_DUET:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    goto :goto_83

    .line 1056
    :cond_67
    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_83

    .line 1057
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEReactProxy;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ss/android/vesdk/proxy/TEReactProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEReactSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 1058
    invoke-interface {v0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    .line 1059
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_REACTION:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 1062
    :cond_83
    :goto_83
    monitor-exit p1

    return-void

    :goto_85
    monitor-exit p1
    :try_end_86
    .catchall {:try_start_22 .. :try_end_86} :catchall_4a

    throw p0
.end method

.method public startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 13

    .line 1086
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1087
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/camera/TECamera;->setEnableCameraNotify(Z)V

    .line 1089
    :cond_8
    const-string v0, "startPreviewAsync"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1090
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mStartPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 1092
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string v0, "ve_camera_enable_preview_pure_color_background"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_80

    .line 1093
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string v0, "ve_camera_enable_preview_fake_frame_gaussian_blur"

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1095
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1096
    :try_start_31
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFakeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7c

    .line 1097
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {v3, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setPreviewFakeFrame(Landroid/graphics/Bitmap;)I

    if-eqz p2, :cond_7c

    .line 1100
    new-instance v7, Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;

    invoke-direct {v7}, Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1101
    iput v0, v7, Lcom/ss/android/vesdk/filterparam/VEBlurFilterParam;->intensity:F

    .line 1102
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v4

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v0

    .line 1103
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewFakeFrameBlurIndexList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    const-string v3, "TERecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPreviewAsync bEnablePreviewFakeFrameGaussianBlur = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", addTrackFilter, blurIndex = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    :catchall_79
    move-exception v0

    move-object p0, v0

    goto :goto_7e

    .line 1107
    :cond_7c
    :goto_7c
    monitor-exit v2

    goto :goto_80

    :goto_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_31 .. :try_end_7f} :catchall_79

    throw p0

    .line 1111
    :cond_80
    :goto_80
    const-string p2, "startPreview"

    invoke-static {p2}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1112
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->startPreview(Landroid/view/Surface;)I

    move-result p1

    .line 1113
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    .line 1115
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1116
    :try_start_91
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-nez v0, :cond_f3

    .line 1117
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v2, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v2, :cond_d7

    .line 1118
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getEnableV2()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1119
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_cd

    :catchall_b9
    move-exception v0

    move-object p0, v0

    goto :goto_108

    .line 1121
    :cond_bc
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 1123
    :goto_cd
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    invoke-interface {v0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    .line 1124
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_DUET:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    goto :goto_f3

    .line 1125
    :cond_d7
    sget-object v2, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v2, :cond_f3

    .line 1126
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEReactProxy;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/ss/android/vesdk/proxy/TEReactProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEReactSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    .line 1127
    invoke-interface {v0}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onCreate()V

    .line 1128
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;->CAM_WITH_VIDEO_TYPE_REACTION:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorVideoType:Lcom/ss/android/vesdk/TERecorder$CamWithVideoType;

    .line 1131
    :cond_f3
    :goto_f3
    monitor-exit p2
    :try_end_f4
    .catchall {:try_start_91 .. :try_end_f4} :catchall_b9

    .line 1133
    const-string p2, "te_record_start_preview_ret"

    int-to-long v2, p1

    invoke-static {v1, p2, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    if-eqz p1, :cond_104

    .line 1135
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mStartPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-interface {p2, p1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    const/4 p1, 0x0

    .line 1136
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStartPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 1139
    :cond_104
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return-void

    .line 1131
    :goto_108
    :try_start_108
    monitor-exit p2
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_b9

    throw p0
.end method

.method public startRecord(F)I
    .registers 3

    .line 1245
    const-string v0, ""

    invoke-virtual {p0, v0, v0, p1}, Lcom/ss/android/vesdk/TERecorder;->startRecord(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public startRecord(Ljava/lang/String;F)I
    .registers 5

    .line 1250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1251
    const-string p0, "TERecorder"

    const-string p1, "Mp4 file path is null or empty."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 1254
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->getFilePathWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1255
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/ss/android/vesdk/TERecorder;->startRecord(Ljava/lang/String;Ljava/lang/String;FZ)I

    move-result p0

    return p0
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 5

    const/4 v0, 0x0

    .line 1260
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/TERecorder;->startRecord(Ljava/lang/String;Ljava/lang/String;FZ)I

    move-result p0

    return p0
.end method

.method public startRecordAsync(FLcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 5

    .line 1337
    const-string v0, ""

    invoke-virtual {p0, v0, v0, p1}, Lcom/ss/android/vesdk/TERecorder;->startRecord(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p1

    if-nez p1, :cond_11

    .line 1338
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-eq v0, v1, :cond_11

    .line 1339
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mStartRecordCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    return-void

    :cond_11
    if-eqz p2, :cond_16

    .line 1342
    invoke-interface {p2, p1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_16
    return-void
.end method

.method public startRender()I
    .registers 3

    .line 5106
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_titan_release_gpu_resource"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5107
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->startRender()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public startRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 5083
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_titan_release_gpu_resource"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5084
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStartRenderCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 5085
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->startRender()I

    move-result p0

    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    .line 5087
    invoke-interface {p1, p0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    return-void

    :cond_26
    if-eqz p1, :cond_2c

    const/4 p0, 0x0

    .line 5091
    invoke-interface {p1, p0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_2c
    return-void
.end method

.method public startShaderZoom(F)V
    .registers 3

    .line 5022
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v0, "setShaderZoom"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setFloat(Ljava/lang/String;F)I

    return-void
.end method

.method public startZoom(F)V
    .registers 2

    .line 5013
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_5

    return-void

    .line 5017
    :cond_5
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startZoom(F)I

    return-void
.end method

.method public stopAudioRecorder()V
    .registers 2

    const/4 v0, 0x0

    .line 1612
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 5

    .line 1602
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ss/android/vesdk/TERecorderContext;->audioCapturingForSomeScenes:Z

    .line 1603
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v2, "AudioCapturingForSomeScenes"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 1604
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-eqz v0, :cond_13

    .line 1605
    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEAudioCapture;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    :cond_13
    const/4 p1, 0x0

    .line 1607
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    return-void
.end method

.method public stopCameraPreview()V
    .registers 3

    .line 4519
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    const-string v1, "TERecorder"

    if-eqz v0, :cond_11

    .line 4520
    const-string v0, "stopCameraPreview"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->stopPreview()I

    return-void

    .line 4523
    :cond_11
    const-string p0, "No Camera capture to stopCameraPreview"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopFollowShowRender(Z)V
    .registers 2

    .line 2112
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->stopFollowShowRender(Z)V

    return-void
.end method

.method public stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;)I
    .registers 4

    .line 2252
    new-instance v0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2253
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;->setSync(Z)Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;

    move-result-object v0

    .line 2254
    invoke-virtual {v0}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;->build()Lcom/ss/android/vesdk/model/VEPrePlayStopParams;

    move-result-object v0

    .line 2255
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TERecorder;->stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I

    move-result p0

    return p0
.end method

.method public stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I
    .registers 7

    .line 2260
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->doNotStopPrePlayVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 2261
    new-instance v0, Lcom/ss/android/vesdk/model/VEPrePlayParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/model/VEPrePlayParams;-><init>()V

    .line 2262
    iput v1, v0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->stopStrategy:I

    .line 2263
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v3, "PrePlayParams"

    invoke-static {v0}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/model/VEPrePlayParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 2265
    :cond_19
    invoke-static {p2}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p2

    .line 2266
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v2, "PrePlayStopParams"

    invoke-virtual {v0, v2, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 2267
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStopPrePlayCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 2268
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-boolean p1, p1, Lcom/ss/android/vesdk/TERecorderContext;->useAudioGraph:Z

    if-eqz p1, :cond_30

    const/4 p1, 0x0

    .line 2269
    invoke-direct {p0, v1, p1}, Lcom/ss/android/vesdk/TERecorder;->checkMockAudioTrack(ZZ)V

    .line 2271
    :cond_30
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->stopPrePlay()I

    move-result p0

    return p0
.end method

.method public stopPreview(Z)I
    .registers 10

    .line 1149
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1150
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/camera/TECamera;->setEnableCameraNotify(Z)V

    .line 1152
    :cond_8
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->RECORDING:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getRecordStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_45

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->checkStatusWhenStopPreview()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1153
    const-string v0, "TERecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRecord on stopPreview isAsync="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->stopRecord()I

    move-result v0

    if-eqz v0, :cond_43

    const/16 v2, 0x3fe

    .line 1156
    const-string v4, "stopRecord in stopPreview!!"

    invoke-direct {p0, v2, v0, v4}, Lcom/ss/android/vesdk/TERecorder;->notifyRecState(IILjava/lang/String;)V

    .line 1157
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordWhenStopPreviewing:Z

    goto :goto_45

    .line 1159
    :cond_43
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordWhenStopPreviewing:Z

    .line 1162
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-eqz v0, :cond_52

    .line 1163
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    .line 1164
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iput-boolean v1, v0, Lcom/ss/android/vesdk/TERecorderContext;->audioCapturingForSomeScenes:Z

    .line 1166
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1167
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isBlockRenderExit()Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_62

    :cond_61
    move v3, v1

    :goto_62
    if-eqz p1, :cond_87

    if-eqz v3, :cond_85

    .line 1172
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "ve_timeout_for_block_engine_stop"

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 1173
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_85

    .line 1174
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_88

    :cond_85
    move v0, v1

    goto :goto_88

    :cond_87
    const/4 v0, -0x1

    .line 1181
    :goto_88
    const-string v2, "TERecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopPreview start: isBlock="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAsync="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", blockTimeOutInMS="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->stopPreview(J)I

    move-result p1

    .line 1184
    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/TERecorder;->releasePreviewFakeFrameResource(Z)V

    .line 1186
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    :try_start_bb
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz v1, :cond_cc

    instance-of v2, v1, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;

    if-eqz v2, :cond_cc

    .line 1188
    invoke-interface {v1}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->onDestroy()V

    const/4 v1, 0x0

    .line 1189
    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    goto :goto_cc

    :catchall_ca
    move-exception p0

    goto :goto_e9

    .line 1191
    :cond_cc
    :goto_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_bb .. :try_end_cd} :catchall_ca

    .line 1193
    const-string p0, "TERecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPreview done. cost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 1191
    :goto_e9
    :try_start_e9
    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_ca

    throw p0
.end method

.method public stopPreview()V
    .registers 2

    const/4 v0, 0x0

    .line 1144
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->stopPreview(Z)I

    return-void
.end method

.method public stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 1199
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStopPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    const/4 p1, 0x1

    .line 1200
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->stopPreview(Z)I

    return-void
.end method

.method public stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;Z)V
    .registers 3

    if-eqz p2, :cond_4

    .line 1206
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStopPreviewCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 1208
    :cond_4
    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TERecorder;->stopPreview(Z)I

    return-void
.end method

.method public stopPreviewParallel()I
    .registers 1

    .line 4444
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->stopPreviewParallel()I

    move-result p0

    return p0
.end method

.method public stopRecord()I
    .registers 5

    .line 1350
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsEnableVBoost:Z

    if-eqz v0, :cond_27

    .line 1351
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance v1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;

    sget-object v2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->BOOST_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getVBoostTimeout()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;-><init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;I)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V

    .line 1352
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->stopRecord()I

    move-result v0

    .line 1353
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance v2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;

    sget-object v3, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->RESTORE_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    invoke-direct {v2, v3}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;-><init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V

    goto :goto_2d

    .line 1355
    :cond_27
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->stopRecord()I

    move-result v0

    .line 1358
    :goto_2d
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-boolean v1, v1, Lcom/ss/android/vesdk/TERecorderContext;->audioCapturingForSomeScenes:Z

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-eqz v1, :cond_3c

    .line 1359
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEAudioCapture;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    .line 1361
    :cond_3c
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_4b

    .line 1362
    :try_start_41
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz v2, :cond_4b

    .line 1363
    invoke-interface {v2}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->stopRecord()V

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_5a

    .line 1365
    :cond_4b
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_49

    .line 1366
    const-string v1, "te_record_mode"

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-long v2, p0

    const/4 p0, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return v0

    .line 1365
    :goto_5a
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_49

    throw p0
.end method

.method public stopRecord(Lcom/ss/android/vesdk/VEListener$VECallListener;)I
    .registers 3

    .line 1377
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 1378
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->stopRecord()I

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 1379
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorder;->mStopRecordWhenStopPreviewing:Z

    if-nez p0, :cond_11

    .line 1380
    invoke-interface {p1, v0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_11
    return v0
.end method

.method public stopRecord(Z)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public stopRecordAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 1387
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->stopRecord(Lcom/ss/android/vesdk/VEListener$VECallListener;)I

    return-void
.end method

.method public stopRender(Z)V
    .registers 2

    .line 2107
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->stopRender(Z)V

    return-void
.end method

.method public stopZoom()V
    .registers 1

    .line 5027
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_5

    return-void

    .line 5031
    :cond_5
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->stopZoom()I

    return-void
.end method

.method public surfaceChanged(Landroid/view/Surface;III)V
    .registers 9

    .line 831
    iget-boolean p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz p2, :cond_12f

    .line 832
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged... width: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TERecorder"

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    sget v0, Lcom/ss/android/vesdk/TERecorder;->FLAG_SURFACE_CHANGED:I

    or-int/2addr p2, v0

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    .line 834
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    iput p3, p2, Lcom/ss/android/vesdk/VESize;->width:I

    .line 835
    iput p4, p2, Lcom/ss/android/vesdk/VESize;->height:I

    .line 836
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 837
    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4d

    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_4b

    goto :goto_4d

    :cond_4b
    move p2, v2

    goto :goto_4e

    :cond_4d
    :goto_4d
    move p2, v1

    .line 839
    :goto_4e
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    if-eqz v0, :cond_7c

    iget v3, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    and-int/lit8 v3, v3, 0x3

    if-lez v3, :cond_7c

    if-eqz p2, :cond_7c

    .line 841
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    invoke-direct {p0, p2, v0}, Lcom/ss/android/vesdk/TERecorder;->aspectRenderSizeToAnotherSize(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    .line 842
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    .line 843
    invoke-virtual {v0, p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 844
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    .line 846
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    .line 848
    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    goto/16 :goto_10a

    :cond_7c
    if-nez v0, :cond_b9

    if-eqz p2, :cond_b9

    .line 849
    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    and-int/lit8 p2, p2, 0x3

    if-lez p2, :cond_b9

    .line 850
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    invoke-direct {p0, p2, v0}, Lcom/ss/android/vesdk/TERecorder;->aspectRenderSizeToAnotherSize(Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    .line 851
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    .line 852
    invoke-virtual {v0, p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    sget-object v3, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 853
    invoke-virtual {v0, v3}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 855
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    iget v1, p2, Lcom/ss/android/vesdk/VESize;->width:I

    iget v3, p2, Lcom/ss/android/vesdk/VESize;->height:I

    .line 856
    invoke-virtual {v0, v1, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 859
    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mSetPreviewRatioFlag:I

    goto :goto_10a

    .line 860
    :cond_b9
    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->mTranslateYInRatio11OrRound:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_109

    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 861
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p2, v0, :cond_d2

    iget p2, p0, Lcom/ss/android/vesdk/TERecorder;->mRadioMode:I

    sget-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_109

    .line 862
    :cond_d2
    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mTranslateYInRatio11OrRound:I

    .line 863
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mSurfaceSize:Lcom/ss/android/vesdk/VESize;

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float p2, p2

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p2, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p2, v0

    iget v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mViewportPaddingBottomInRadio34:F

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder;->mPaddingBottomInRatio34Offset:F

    sub-float/2addr v0, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 864
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 865
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 866
    invoke-virtual {v0, p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setTranslateY(I)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p2

    sget-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 867
    invoke-virtual {p2, v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object p2

    .line 868
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object p2

    .line 869
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    if-eqz v0, :cond_107

    .line 870
    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    goto :goto_109

    .line 872
    :cond_107
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    :cond_109
    :goto_109
    const/4 p2, 0x0

    .line 875
    :goto_10a
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 876
    invoke-virtual {p0, p1, p3, p4}, Lcom/ss/android/vesdk/TERecorder;->changeSurfaceSync(Landroid/view/Surface;II)I

    if-eqz p2, :cond_11c

    .line 879
    iget p1, p2, Lcom/ss/android/vesdk/VESize;->width:I

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->changeVideoOutputSizeViaInner(II)V

    return-void

    .line 880
    :cond_11c
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mAspectVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    if-eqz p1, :cond_12f

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result p1

    if-eqz p1, :cond_12f

    .line 882
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mAspectVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    iget p2, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/vesdk/TERecorder;->changeVideoOutputSize(II)V

    :cond_12f
    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .registers 4

    .line 790
    const-string v0, "TERecorder"

    const-string v1, "surface created."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz v0, :cond_61

    .line 793
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCreateCameraLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 794
    :goto_10
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez v0, :cond_1f

    .line 796
    :try_start_14
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCreateCameraCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_10

    :catch_1a
    move-exception v0

    .line 798
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    .line 801
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCreateCameraLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 803
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenCameraLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 804
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->openCamera()V

    .line 805
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenCameraCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 806
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mOpenCameraLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 808
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setSurface(Landroid/view/Surface;)V

    .line 811
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 812
    :goto_3e
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDone:Z

    if-nez v0, :cond_4d

    .line 814
    :try_start_42
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_3e

    :catch_48
    move-exception v0

    .line 816
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3e

    .line 819
    :cond_4d
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInitDoneLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 820
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->startPreview(Landroid/view/Surface;)V

    .line 822
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraPreviewSize:Lcom/ss/android/vesdk/VESize;

    if-eqz p1, :cond_61

    .line 823
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z

    const/4 p1, 0x0

    .line 824
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraPreviewSize:Lcom/ss/android/vesdk/VESize;

    :cond_61
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .registers 3

    .line 889
    const-string p1, "TERecorder"

    const-string v0, "surface destroy."

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    if-eqz p1, :cond_11

    .line 891
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->closeCamera()V

    .line 892
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->stopPreview()V

    :cond_11
    return-void
.end method

.method public suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
    .registers 3

    .line 4244
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z

    move-result p0

    return p0
.end method

.method public switchCameraMode(I)I
    .registers 2

    .line 5036
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 5040
    :cond_6
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchCameraMode(I)I

    move-result p0

    return p0
.end method

.method public switchEffectInternal(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I
    .registers 12

    .line 3692
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_19

    .line 3694
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1a

    :cond_19
    const/4 v2, -0x1

    :goto_1a
    if-ltz v2, :cond_23

    .line 3697
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {v3, v2, p1}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-object v7, p1

    goto :goto_2f

    .line 3699
    :cond_23
    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    iget v6, p0, Lcom/ss/android/vesdk/TERecorder;->mCamTrack:I

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v2

    :goto_2f
    if-nez v0, :cond_3a

    .line 3703
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v7, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3705
    :cond_3a
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mFilterMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)V
    .registers 2

    .line 4929
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 4930
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)I

    return-void

    .line 4932
    :cond_8
    const-string p0, "TERecorder"

    const-string p1, "No Camera capture to switchFlashMode"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchTorch(Z)V
    .registers 2

    .line 4937
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 4938
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchTorch(Z)I

    return-void

    .line 4940
    :cond_8
    const-string p0, "TERecorder"

    const-string p1, "No Camera capture to switchTorch"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tryRestore(Ljava/util/List;Ljava/lang/String;II)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VETimeSpeedModel;",
            ">;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    int-to-long v2, p3

    const-wide/32 v4, 0x7fffffff

    move-object v0, p0

    move-object v1, p2

    move v6, p4

    .line 1455
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/vesdk/TERecorder;->setRecordBGM(Ljava/lang/String;JJI)I

    .line 1457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 1458
    new-array p2, p0, [Ljava/lang/String;

    .line 1459
    new-array p3, p0, [I

    .line 1460
    new-array p4, p0, [I

    .line 1461
    new-array v1, p0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, p0, :cond_79

    .line 1463
    iget-object v4, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v4, v4, Lcom/ss/android/vesdk/TERecorderContext;->videoPathQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    iget-object v4, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v4, v4, Lcom/ss/android/vesdk/TERecorderContext;->audioPathQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_3c

    .line 1466
    :cond_2f
    iget-object v4, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v4, v4, Lcom/ss/android/vesdk/TERecorderContext;->videoPathQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, p2, v3

    goto :goto_5b

    .line 1464
    :cond_3c
    :goto_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v5, v5, Lcom/ss/android/vesdk/TERecorderContext;->recordDirPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_frag_v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    .line 1468
    :goto_5b
    aput v2, p3, v3

    .line 1469
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VETimeSpeedModel;

    invoke-virtual {v4}, Lcom/ss/android/medialib/model/TimeSpeedModel;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, p4, v3

    .line 1470
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VETimeSpeedModel;

    invoke-virtual {v4}, Lcom/ss/android/medialib/model/TimeSpeedModel;->getSpeed()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1475
    :cond_79
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 1476
    const-string v3, "Paths"

    invoke-virtual {p1, v3, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1477
    const-string p2, "TrimIns"

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 1478
    const-string p2, "TrimOuts"

    invoke-virtual {p1, p2, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 1479
    const-string p2, "Speeds"

    invoke-virtual {p1, p2, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDoubleArray(Ljava/lang/String;[D)I

    .line 1480
    const-string p2, "TrackType"

    invoke-virtual {p1, p2, v2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1481
    iget-object p2, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v3, "FillRecordedClips"

    invoke-virtual {p2, v3, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1485
    new-array p1, p0, [Ljava/lang/String;

    :goto_9f
    if-ge v2, p0, :cond_e5

    .line 1487
    iget-object p2, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object p2, p2, Lcom/ss/android/vesdk/TERecorderContext;->videoPathQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c3

    iget-object p2, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object p2, p2, Lcom/ss/android/vesdk/TERecorderContext;->audioPathQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b6

    goto :goto_c3

    .line 1490
    :cond_b6
    iget-object p2, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object p2, p2, Lcom/ss/android/vesdk/TERecorderContext;->audioPathQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    aput-object p2, p1, v2

    goto :goto_e2

    .line 1488
    :cond_c3
    :goto_c3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iget-object v3, v3, Lcom/ss/android/vesdk/TERecorderContext;->recordDirPath:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_frag_a"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    :goto_e2
    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    .line 1494
    :cond_e5
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p0

    .line 1495
    const-string p2, "Paths"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1496
    const-string p1, "TrimIns"

    invoke-virtual {p0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 1497
    const-string p1, "TrimOuts"

    invoke-virtual {p0, p1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setIntArray(Ljava/lang/String;[I)I

    .line 1498
    const-string p1, "Speeds"

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setDoubleArray(Ljava/lang/String;[D)I

    .line 1499
    const-string p1, "TrackType"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 1500
    iget-object p1, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p2, "FillRecordedClips"

    invoke-virtual {p1, p2, p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1502
    iget-object p0, v0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->tryRestore()I

    move-result p0

    .line 1504
    iget-object p1, v0, Lcom/ss/android/vesdk/TERecorder;->mFuncLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1505
    :try_start_113
    iget-object p2, v0, Lcom/ss/android/vesdk/TERecorder;->mFuncProxy:Lcom/ss/android/vesdk/proxy/TEFuncProxy;

    if-eqz p2, :cond_11e

    .line 1506
    invoke-interface {p2}, Lcom/ss/android/vesdk/proxy/TEFuncProxy;->tryRestore()V

    goto :goto_11e

    :catchall_11b
    move-exception v0

    move-object p0, v0

    goto :goto_120

    .line 1508
    :cond_11e
    :goto_11e
    monitor-exit p1

    return p0

    :goto_120
    monitor-exit p1
    :try_end_121
    .catchall {:try_start_113 .. :try_end_121} :catchall_11b

    throw p0
.end method

.method public tryRestoreAsync(Ljava/util/List;Ljava/lang/String;IILcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VETimeSpeedModel;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/ss/android/vesdk/VEListener$VECallListener;",
            ")V"
        }
    .end annotation

    .line 1514
    iput-object p5, p0, Lcom/ss/android/vesdk/TERecorder;->mRestoreCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    .line 1515
    iget-object p5, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ss/android/vesdk/TERecorder$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/TERecorder$6;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/util/List;Ljava/lang/String;II)V

    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unRegFaceInfoCallback()V
    .registers 1

    .line 4398
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegFaceInfoCallback()V

    .line 4399
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->unRegFaceInfoCallback()V

    return-void
.end method

.method public unRegSkeletonDetectCallback()V
    .registers 4

    .line 4462
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegSkeletonDetectCallback()V

    .line 4464
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4465
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda23;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4469
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->unRegSkeletonDetectCallback()V

    return-void
.end method

.method public unRegSmartBeautyCallback()V
    .registers 4

    .line 4488
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegSmartBeautyCallback()V

    .line 4490
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4491
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda15;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4495
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEffect;->unRegSmartBeautyCallback()V

    return-void
.end method

.method public unregEffectAlgorithmCallback()V
    .registers 2

    .line 5346
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEffect;->regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V

    return-void
.end method

.method public upExposureCompensation()V
    .registers 1

    .line 4977
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-nez p0, :cond_5

    return-void

    .line 4981
    :cond_5
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->upExposureCompensation()V

    return-void
.end method

.method public updateAlgorithmRuntimeParam(IF)V
    .registers 3

    .line 3635
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEffect;->updateAlgorithmRuntimeParam(IF)V

    return-void
.end method

.method public updateCameraOrientation()V
    .registers 3

    .line 5045
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_d

    .line 5046
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings$Operation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VECameraSettings$Operation;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->process(Lcom/ss/android/vesdk/VECameraSettings$Operation;)V

    :cond_d
    return-void
.end method

.method public updateClipsTimelineParam(IILjava/util/Map;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;",
            ">;)I"
        }
    .end annotation

    if-eqz p3, :cond_76

    .line 2195
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_76

    .line 2199
    :cond_9
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 2200
    const-string v1, "TrackIndex"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2201
    const-string p2, "TrackType"

    invoke-virtual {v0, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2203
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    new-array p2, p1, [Lcom/ss/android/ttve/nativePort/TEBundle;

    .line 2204
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2206
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2207
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    .line 2208
    invoke-static {v6}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v6

    .line 2209
    const-string v7, "ClipIndex"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2210
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2211
    invoke-virtual {v6}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v7

    invoke-virtual {v0, v5, v7, v8}, Lcom/ss/android/ttve/nativePort/TEBundle;->setHandle(Ljava/lang/String;J)I

    .line 2212
    aput-object v6, p2, v4

    .line 2213
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 2217
    :cond_5e
    const-string p3, "ClipIndexes"

    invoke-virtual {v0, p3, v1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    .line 2218
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p3, "UpdateClipsTimelineParam"

    invoke-virtual {p0, p3, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    :goto_6b
    if-ge v3, p1, :cond_75

    .line 2219
    aget-object p3, p2, v3

    .line 2220
    invoke-virtual {p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    :cond_75
    return p0

    :cond_76
    :goto_76
    const/16 p0, -0x64

    return p0
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 4063
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 5

    .line 4115
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEEffect;->updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I

    move-result p0

    return p0
.end method

.method public updateReactionRegion(IIIIF)[I
    .registers 14

    .line 2408
    const-string p5, "TERecorder"

    const-string v0, "updateReactionRegion"

    invoke-static {p5, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    .line 2410
    iget v6, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v7, p0, Lcom/ss/android/vesdk/VESize;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    filled-new-array/range {v0 .. v7}, [I

    move-result-object p0

    return-object p0
.end method

.method public updateRotation(FFF)V
    .registers 4

    .line 3799
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEffect;->updateRotation(FFF)V

    return-void
.end method

.method public updateTrack(IILcom/ss/android/ttve/model/VETrackParams;)I
    .registers 5

    const/4 v0, 0x0

    .line 2163
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/TERecorder;->updateTrack(IILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p0

    return p0
.end method

.method public updateTrack(IILcom/ss/android/ttve/model/VETrackParams;Z)I
    .registers 6

    .line 2179
    invoke-static {p3}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/ttve/model/VETrackParams;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p3

    .line 2180
    const-string v0, "TrackIndex"

    invoke-virtual {p3, v0, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2181
    const-string p2, "TrackType"

    invoke-virtual {p3, p2, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setInt(Ljava/lang/String;I)I

    .line 2182
    const-string p1, "UpdateTimeline"

    invoke-virtual {p3, p1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 2183
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string p1, "UpdateTrack"

    invoke-virtual {p0, p1, p3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    move-result p0

    return p0
.end method

.method public updateVideoDecodeChainByTimeline()V
    .registers 1

    .line 5422
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->updateVideoDecodeChainByTimeline()V

    return-void
.end method

.method public useAudioGraphOutput(ZZZZ)V
    .registers 9

    .line 1662
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorderContext:Lcom/ss/android/vesdk/TERecorderContext;

    iput-boolean p2, v0, Lcom/ss/android/vesdk/TERecorderContext;->useAudioGraph:Z

    .line 1663
    const-string v1, "EnableAudioGraphRefactor"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_12

    .line 1664
    iput-boolean v3, v0, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioGraphRefactor:Z

    .line 1665
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    goto :goto_1f

    .line 1667
    :cond_12
    iput-boolean v2, v0, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioGraphRefactor:Z

    .line 1668
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    .line 1669
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->stopAudioRecorder()V

    .line 1670
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/TERecorder;->enableAudioRecorder(Z)V

    .line 1673
    :goto_1f
    invoke-direct {p0, p2, p4}, Lcom/ss/android/vesdk/TERecorder;->checkMockAudioTrack(ZZ)V

    .line 1675
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->obtain()Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 1676
    const-string v1, "UseAudioGraph"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1677
    const-string v1, "UseOutPut"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1678
    const-string p1, "UseMicIn"

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1679
    const-string v1, "UseBgm"

    invoke-virtual {v0, v1, p4}, Lcom/ss/android/ttve/nativePort/TEBundle;->setBool(Ljava/lang/String;Z)I

    .line 1682
    iget-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    const-string v1, "AudioGraphParam"

    invoke-virtual {p4, v1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 1683
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecorder:Lcom/ss/android/ttve/nativePort/TERecorderInterface;

    if-eqz p2, :cond_47

    if-eqz p3, :cond_48

    :cond_47
    move v2, v3

    :cond_48
    invoke-virtual {p0, p1, v2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBool(Ljava/lang/String;Z)I

    return-void
.end method

.method public useMusic(Z)V
    .registers 2

    .line 1657
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder;->mUseMusic:Z

    return-void
.end method
