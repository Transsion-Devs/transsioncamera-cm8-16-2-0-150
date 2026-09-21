.class public abstract Lcom/ss/android/vesdk/TERecorderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TERecorderBase"


# instance fields
.field mAECModelPath:Ljava/lang/String;

.field protected mAssetManager:Landroid/content/res/AssetManager;

.field mAttachAudioFromOther:Z

.field mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

.field mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

.field mBgmPath:Ljava/lang/String;

.field mBgmType:I

.field mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

.field mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

.field mCameraZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

.field mContext:Landroid/content/Context;

.field mCreateEffectUseAmazing:Z

.field mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

.field mCurEffectRequest:Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

.field mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

.field mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

.field mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

.field mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

.field mDetectListener:Lcom/ss/android/vesdk/VERecorder$DetectListener;

.field mDetectModelsDir:Ljava/lang/String;

.field mEffectAudioManagerCallback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

.field mEnableAEC:Z

.field protected mEnableEarBack:Z

.field mEnablePBO:Z

.field mEnableWaterMark:Z

.field mForceFirstFrameHasEffect:Z

.field protected mIsBindingViewMode:Z

.field protected mIsEnableVBoost:Z

.field protected mIsSupportStyleFeature:Z

.field mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

.field mOnFrameAvailableListenerExt:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

.field mPaddingBottomInRadio34:F

.field mPictureTakenProxyListener:Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;

.field mPreviewDataCallbackListener:Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;

.field mPreviewRadioMode:I

.field mRecorderLensCallback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

.field mRecorderPreviewListener:Lcom/ss/android/vesdk/VEListener$VERecorderPreviewListener;

.field mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

.field mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

.field mRenderViewSize:Lcom/ss/android/vesdk/VESize;

.field mRenderViewSizeChanged:Z

.field mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

.field mSATZoomListener:Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;

.field mShaderZoomListener:Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;

.field mStickerRequestCallback:Lcom/ss/android/medialib/presenter/IStickerRequestCallback;

.field protected mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

.field mTrimIn:J

.field mTrimOut:J

.field mUseFlip:Z

.field mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

.field mVEAudioRecordStateCallback:Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;

.field mVECherEffectParamCallback:Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;

.field mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

.field mVEEffectAlgorithmCallback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

.field mVEFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

.field mVEHandDetectCallback:Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;

.field mVEPreviewRadioListener:Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;

.field mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

.field mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

.field mVESceneDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;

.field mVESkeletonDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

.field mVESlamDetectListeners:Lcom/ss/android/vesdk/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;",
            ">;"
        }
    .end annotation
.end field

.field mVESmartBeautyCallback:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

.field mVEWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

.field mVeAudioRecordVolumeCallback:Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;

.field mVeVoiceActivityDetectionCallback:Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;

.field mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

.field mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

.field mViewportPaddingBottomInRadio34:F

.field mVolumeDetect:Z

.field mVolumes:Lcom/ss/android/vesdk/VEVolumeParam;

.field protected previewDropFps:F

.field protected previewLagCount:I

.field protected previewLagMaxDuration:I

.field protected previewLagTotalDuration:I

.field protected previewRenderFps:F

.field protected recordCount:I

.field protected recordLagCount:I

.field protected recordLagMaxDuration:I

.field protected recordLagTotalDuration:I

.field protected recordPreviewFpsEnd:D

.field protected recordPreviewFpsStart:D

.field protected recordRenderDropFps:F

.field protected recordRenderFps:F

.field protected recordWriteFps:F

.field protected renderEffectTime:D

.field protected renderFrameTime:D

.field voiceHandler:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V
    .registers 8

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESlamDetectListeners:Lcom/ss/android/vesdk/ConcurrentList;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEffectAudioManagerCallback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

    .line 94
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewDataCallbackListener:Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;

    .line 95
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPictureTakenProxyListener:Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;

    const-wide/16 v1, -0x1

    .line 99
    iput-wide v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->voiceHandler:J

    .line 113
    sget-object v3, Lcom/ss/android/vesdk/VERecordMode;->DEFAULT:Lcom/ss/android/vesdk/VERecordMode;

    iput-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    .line 117
    iput-wide v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimOut:J

    .line 120
    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    .line 121
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSize:Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSizeChanged:Z

    .line 124
    new-instance v2, Lcom/ss/android/ttve/model/BeautyBean;

    invoke-direct {v2}, Lcom/ss/android/ttve/model/BeautyBean;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    .line 125
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurEffectRequest:Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    .line 126
    new-instance v2, Lcom/ss/android/ttve/model/FilterBean;

    invoke-direct {v2}, Lcom/ss/android/ttve/model/FilterBean;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    .line 127
    new-instance v2, Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-direct {v2}, Lcom/ss/android/ttve/model/ReshapeFaceBean;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    .line 128
    new-instance v2, Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-direct {v2}, Lcom/ss/android/ttve/model/FaceMakeupBean;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    .line 129
    new-instance v2, Lcom/ss/android/vesdk/VEVolumeParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/VEVolumeParam;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVolumes:Lcom/ss/android/vesdk/VEVolumeParam;

    .line 132
    new-instance v2, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v2, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    const/high16 v2, 0x3e000000    # 0.125f

    .line 133
    iput v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPaddingBottomInRadio34:F

    .line 134
    iput v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mViewportPaddingBottomInRadio34:F

    .line 135
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mForceFirstFrameHasEffect:Z

    .line 139
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableAEC:Z

    .line 140
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mUseFlip:Z

    .line 141
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAECModelPath:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVolumeDetect:Z

    .line 146
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAssetManager:Landroid/content/res/AssetManager;

    .line 147
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsSupportStyleFeature:Z

    .line 153
    iput v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagCount:I

    .line 154
    iput v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagMaxDuration:I

    .line 155
    iput v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagTotalDuration:I

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderFps:F

    .line 157
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderDropFps:F

    .line 158
    iput v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordCount:I

    .line 159
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordWriteFps:F

    .line 160
    iput v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagCount:I

    .line 161
    iput v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagMaxDuration:I

    .line 162
    iput v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagTotalDuration:I

    .line 163
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewRenderFps:F

    .line 164
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewDropFps:F

    const-wide/16 v2, 0x0

    .line 165
    iput-wide v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordPreviewFpsStart:D

    .line 166
    iput-wide v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordPreviewFpsEnd:D

    .line 167
    iput-wide v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->renderFrameTime:D

    .line 168
    iput-wide v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->renderEffectTime:D

    .line 170
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    .line 173
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableEarBack:Z

    .line 175
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsEnableVBoost:Z

    .line 178
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    .line 181
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    .line 183
    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz p3, :cond_a3

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsBindingViewMode:Z

    :cond_a3
    return-void
.end method


# virtual methods
.method public addDataSource(Lcom/ss/android/vesdk/VEDataSource;)V
    .registers 2

    return-void
.end method

.method public addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 1083
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public addPipRenderTarget(Landroid/view/Surface;IILandroid/graphics/Bitmap;Z)Z
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public addRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V
    .registers 2

    return-void
.end method

.method public addSlamDetectListener(Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 1143
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESlamDetectListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/ConcurrentList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public abstract addSticker(Landroid/graphics/Bitmap;II)V
.end method

.method public addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I
    .registers 3

    .line 665
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public alignTo(IIII)I
    .registers 5

    .line 725
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I
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

    const/4 p0, -0x1

    return p0
.end method

.method public abstract appendComposerNodes([Ljava/lang/String;I)I
.end method

.method public attachCameraCapture(Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 2

    .line 298
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public attachCameraSettings(Lcom/ss/android/vesdk/VECameraSettings;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    return-void
.end method

.method public abstract capture(IIIZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end method

.method public abstract capture(IZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end method

.method public captureNightEnhance(Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 3

    return-void
.end method

.method public changeCamera()V
    .registers 2

    .line 772
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public changeCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)V
    .registers 2

    .line 776
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract changeRecordMode(Lcom/ss/android/vesdk/VERecordMode;)V
.end method

.method public changeRecorderState(I)V
    .registers 2

    return-void
.end method

.method public changeRenderSize(Lcom/ss/android/vesdk/VESize;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public changeResManager(Lcom/ss/android/vesdk/runtime/VERecorderResManager;)I
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    const/4 p0, 0x0

    return p0
.end method

.method public abstract changeSurface(Landroid/view/Surface;)I
.end method

.method public changeSurface(Landroid/view/Surface;II)I
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public changeSurfaceSync(Landroid/view/Surface;II)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 2

    return-void
.end method

.method public changeVideoOutputSize(II)V
    .registers 3

    .line 270
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    iput p1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 271
    iput p2, p0, Lcom/ss/android/vesdk/VESize;->height:I

    return-void
.end method

.method public abstract checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method public abstract checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method public chooseAreaFromRatio34(F)V
    .registers 2

    .line 279
    iput p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPaddingBottomInRadio34:F

    return-void
.end method

.method public chooseSlamFace(I)V
    .registers 2

    return-void
.end method

.method public clearAllFrags()V
    .registers 1

    return-void
.end method

.method public clearDisplayColor(IIII)V
    .registers 5

    return-void
.end method

.method public clearLandMarkDetectListener()V
    .registers 2

    .line 1101
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract clearSticker()V
.end method

.method public abstract concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public concatAsync(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VECallListener;I)V
    .registers 8

    if-eqz p6, :cond_6

    const/4 p0, -0x1

    .line 564
    invoke-interface {p6, p0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_6
    return-void
.end method

.method public configStyleResourceFinder(Landroid/content/res/AssetManager;)V
    .registers 3

    const/4 v0, 0x1

    .line 1573
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsSupportStyleFeature:Z

    .line 1574
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAssetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method protected createInternalRecorder()Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 1

    .line 190
    new-instance p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-direct {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;-><init>()V

    return-object p0
.end method

.method public deleteFrag(I)I
    .registers 2

    .line 555
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract deleteLastFrag()V
.end method

.method public deleteLastFrag(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 547
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detachCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 2

    .line 302
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract disableRender(Z)V
.end method

.method public downExposureCompensation()V
    .registers 2

    .line 820
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract enableAudio(Z)V
.end method

.method public enableAudioPlayerFromVE(Z)V
    .registers 2

    return-void
.end method

.method public enableAudioRecorder(Z)V
    .registers 2

    .line 569
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V
    .registers 3

    .line 577
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract enableDuetMicRecord(Z)V
.end method

.method public abstract enableEffect(Z)V
.end method

.method public enableEffectAmazing(Z)V
    .registers 2

    .line 1119
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCreateEffectUseAmazing:Z

    return-void
.end method

.method public abstract enableFaceBeautifyDetect(I)V
.end method

.method public abstract enableFaceExtInfo(I)V
.end method

.method public enableFirstFrameBypassEffectFrame(Z)V
    .registers 2

    return-void
.end method

.method public enableGetPropTrack(Z)V
    .registers 2

    return-void
.end method

.method public enableLensProcess(IZ)V
    .registers 3

    return-void
.end method

.method public enableNewAudioCapture(Z)V
    .registers 2

    .line 866
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz p1, :cond_b

    .line 868
    const-string p0, "TERecorderBase"

    const-string p1, "attach VEAudioCapture from other"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public enablePBO(Z)V
    .registers 2

    .line 927
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnablePBO:Z

    return-void
.end method

.method public enablePictureTestMode(ZZ)V
    .registers 3

    return-void
.end method

.method public enableRecordBGMToMp4(Z)V
    .registers 2

    return-void
.end method

.method public enableRecordFlip(Z)V
    .registers 2

    return-void
.end method

.method public enableRecordingMp4(Z)V
    .registers 2

    .line 482
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract enableScan(ZJ)V
.end method

.method public abstract enableSceneRecognition(Z)V
.end method

.method public abstract enableSkeletonDetect(Z)V
.end method

.method public abstract enableSmartBeauty(Z)V
.end method

.method public abstract enableStickerRecognition(Z)V
.end method

.method public enableTimestampCallback(Z)V
    .registers 2

    .line 622
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableVolumeDetect(Z)V
    .registers 2

    .line 1108
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVolumeDetect:Z

    return-void
.end method

.method public enableWaterMark(Z)V
    .registers 2

    .line 931
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableWaterMark:Z

    return-void
.end method

.method public fetchDistortionInfo(Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public forceFirstFrameHasEffect(Z)V
    .registers 2

    .line 287
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mForceFirstFrameHasEffect:Z

    return-void
.end method

.method abstract getAECSuggestVolume()[F
.end method

.method public getAudioCapture()Lcom/ss/android/vesdk/VEAudioCapture;
    .registers 1

    .line 1527
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    return-object p0
.end method

.method public getAudioConsumer()Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;
    .registers 2

    .line 808
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .registers 2

    .line 780
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getCameraFps()F
.end method

.method public abstract getComposerNodePaths()Ljava/lang/String;
.end method

.method public abstract getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F
.end method

.method public getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    return-object p0
.end method

.method public getCurrentCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomProcessor()Lcom/ss/android/vesdk/VEFrameCustomProcessor;
    .registers 1

    .line 1710
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    return-object p0
.end method

.method public abstract getDuetAudioPath()Ljava/lang/String;
.end method

.method public getEffect()Lcom/ss/android/vesdk/effect/IEffect;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectHandler()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEnableVBoost()Z
    .registers 3

    .line 1608
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_enable_vboost"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public abstract getEndFrameTime()J
.end method

.method public abstract getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
.end method

.method public abstract getFilterIntensity(Ljava/lang/String;)F
.end method

.method public getFrameByConfig(Lcom/ss/android/vesdk/VERecorder$FrameConfig;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 2

    .line 862
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInternalRecorder()Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastPerformanceData()Lcom/ss/android/vesdk/model/VERecordPerformanceData;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastRecordFrameNum()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMapBuffer()Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxZoom()F
    .registers 2

    .line 828
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMicState()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPerfStageCostByKey(Ljava/lang/String;)J
    .registers 2

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getPictureTakenProxyListener()Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;
    .registers 1

    .line 1703
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPictureTakenProxyListener:Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;

    return-object p0
.end method

.method public getPrePlayTimeStamp()J
    .registers 2

    .line 729
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Only supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreviewDropFps()F
    .registers 1

    .line 1479
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewDropFps:F

    return p0
.end method

.method public getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewFrameWithOrigin(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewLagCount()I
    .registers 1

    .line 1491
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagCount:I

    return p0
.end method

.method public getPreviewLagMaxDuration()I
    .registers 1

    .line 1495
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagMaxDuration:I

    return p0
.end method

.method public getPreviewLagTotalDuration()I
    .registers 1

    .line 1499
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagTotalDuration:I

    return p0
.end method

.method public getPreviewRenderFps()F
    .registers 1

    .line 1503
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewRenderFps:F

    return p0
.end method

.method public getPreviewRenderRect()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getReactAudioPath()Ljava/lang/String;
.end method

.method public abstract getReactRegionInRecordVideoPixel()[I
.end method

.method public abstract getReactRegionInViewPixel()[I
.end method

.method public abstract getReactionPosMarginInViewPixel()[I
.end method

.method public abstract getReactionWindowRotation()F
.end method

.method public getRecordCount()I
    .registers 1

    .line 1487
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordCount:I

    return p0
.end method

.method public getRecordLagCount()I
    .registers 1

    .line 1463
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagCount:I

    return p0
.end method

.method public getRecordLagMaxDuration()I
    .registers 1

    .line 1467
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagMaxDuration:I

    return p0
.end method

.method public getRecordLagTotalDuration()I
    .registers 1

    .line 1471
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagTotalDuration:I

    return p0
.end method

.method public getRecordPreviewFpsEnd()D
    .registers 3

    .line 1515
    iget-wide v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordPreviewFpsEnd:D

    return-wide v0
.end method

.method public getRecordPreviewFpsStart()D
    .registers 3

    .line 1511
    iget-wide v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordPreviewFpsStart:D

    return-wide v0
.end method

.method public getRecordRenderDropFps()F
    .registers 1

    .line 1483
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderDropFps:F

    return p0
.end method

.method public getRecordRenderFps()F
    .registers 1

    .line 1475
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderFps:F

    return p0
.end method

.method public getRecordStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getRecordWriteFps()F
    .registers 1

    .line 1507
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordWriteFps:F

    return p0
.end method

.method public getRecordedVideoPaths()[Ljava/lang/String;
    .registers 2

    .line 486
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRecorderModelControl()Lcom/ss/android/vesdk/IVERecorderModelControl;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecorderPrePlayControl()Lcom/ss/android/vesdk/IVERecorderPrePlayControl;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRenderEffectTime()D
    .registers 3

    .line 1523
    iget-wide v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->renderEffectTime:D

    return-wide v0
.end method

.method public getRenderFrameTime()D
    .registers 3

    .line 1519
    iget-wide v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->renderFrameTime:D

    return-wide v0
.end method

.method public getRenderView()Lcom/ss/android/vesdk/render/VERenderView;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    return-object p0
.end method

.method public getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1269
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSegmentAudioPlayBackTimestamp()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSegmentAudioUS()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSegmentFrameTimeUS()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSlamFaceCount()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getSmallWindowSnapshot(IILcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getStyleAudioProxy()Ljava/lang/Object;
    .registers 2

    .line 1583
    const-string p0, "TERecorderBase"

    const-string v0, "getStyleAudioProxy not impl"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStyleProxy()Ljava/lang/Object;
    .registers 2

    .line 1578
    const-string p0, "TERecorderBase"

    const-string v0, "getStyleProxy not impl"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuggestionSettingsForKaraoke()Lcom/ss/android/vesdk/VEAudioCaptureSettings;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVBoostTimeout()I
    .registers 2

    .line 1613
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_vboost_timeout"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 1614
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    .line 1615
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1f
    const/16 p0, 0x32

    return p0
.end method

.method public abstract getVideoController()Lcom/ss/android/medialib/presenter/ITEVideoController;
.end method

.method public getVideoEncodeSettings()Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    return-object p0
.end method

.method public handleEffectAudio(ZJ)V
    .registers 4

    return-void
.end method

.method public abstract handleEffectAudioPlay(Z)V
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 228
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 8

    .line 234
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_22

    if-eqz p4, :cond_1a

    if-eqz p5, :cond_12

    .line 211
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    .line 212
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 213
    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 214
    iput-object p5, p0, Lcom/ss/android/vesdk/TERecorderBase;->mDetectModelsDir:Ljava/lang/String;

    const/4 p0, 0x0

    return p0

    .line 208
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "modelsDir could not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "recordDir could not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "VideoEncodeSettings could not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "CameraSettings could not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 8

    .line 222
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initDuet(Lcom/ss/android/vesdk/VEDuetSettings;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 310
    sget-object p1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    return-void
.end method

.method public abstract initFaceBeautifyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;)V
.end method

.method public abstract initFaceBeautyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;)V
.end method

.method public abstract initFaceDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)V
.end method

.method public initFollowingShotWindow(Ljava/lang/String;JJ)I
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public abstract initHDRNetDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;)V
.end method

.method public abstract initHandDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;)V
.end method

.method public initReact(Lcom/ss/android/vesdk/VEReactSettings;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    .line 324
    sget-object p1, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    return-void
.end method

.method public abstract isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
.end method

.method public isSupportWideAngle(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Z
    .registers 2

    .line 824
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSupportedExposureCompensation()Z
    .registers 2

    .line 804
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadDraft(Lcom/ss/android/vesdk/VERecordDraft;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public notifyFollowShotSurfaceChanged(IIIZ)V
    .registers 5

    return-void
.end method

.method public notifySurfaceChanged(IIIZ)V
    .registers 5

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1438
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    .line 1439
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    .line 1441
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderPreviewListener:Lcom/ss/android/vesdk/VEListener$VERecorderPreviewListener;

    .line 1442
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    .line 1443
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

    .line 1444
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mOnFrameAvailableListenerExt:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

    .line 1446
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 1447
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEEffectAlgorithmCallback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

    .line 1448
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEHandDetectCallback:Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;

    .line 1449
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mDetectListener:Lcom/ss/android/vesdk/VERecorder$DetectListener;

    .line 1450
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    .line 1451
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVECherEffectParamCallback:Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;

    .line 1452
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESkeletonDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

    .line 1453
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEPreviewRadioListener:Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;

    .line 1454
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioRecordStateCallback:Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;

    .line 1455
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVeAudioRecordVolumeCallback:Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;

    .line 1457
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    .line 1458
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public abstract pauseEffectAudio(Z)V
.end method

.method public pauseMediaRecord()V
    .registers 1

    return-void
.end method

.method public pausePlayTrack(II)I
    .registers 3

    .line 713
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pausePrePlay()I
    .registers 2

    .line 693
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Only supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pauseRender()I
    .registers 1

    const/16 p0, -0xc8

    return p0
.end method

.method public pauseRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    return-void
.end method

.method public abstract posInReactionRegion(II)Z
.end method

.method public abstract preventTextureRender(Z)V
.end method

.method public abstract previewDuetVideo()Z
.end method

.method public abstract processTouchEvent(FF)I
.end method

.method public abstract processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
.end method

.method public queryShaderStep()F
    .registers 2

    .line 837
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryZoomAbility()I
    .registers 2

    .line 833
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract recoverCherEffect(Lcom/ss/android/vesdk/VECherEffectParam;)V
.end method

.method public regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
    .registers 2

    .line 1018
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEEffectAlgorithmCallback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

    return-void
.end method

.method public regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 2

    .line 1006
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    return-void
.end method

.method public regHandDetectCallback([ILcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V
    .registers 3

    .line 1036
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEHandDetectCallback:Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;

    return-void
.end method

.method public regSceneDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V
    .registers 2

    .line 1040
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESceneDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;

    return-void
.end method

.method public regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 2

    .line 1052
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESkeletonDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

    return-void
.end method

.method public regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 2

    .line 1060
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESmartBeautyCallback:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

    return-void
.end method

.method public registerCherEffectParamCallback(Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V
    .registers 2

    .line 1030
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVECherEffectParamCallback:Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;

    return-void
.end method

.method public releaseGPUResources()V
    .registers 1

    return-void
.end method

.method public releaseGPUResourcesAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    return-void
.end method

.method public abstract reloadComposerNodes([Ljava/lang/String;I)I
.end method

.method public abstract removeComposerNodes([Ljava/lang/String;I)I
.end method

.method public removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 2

    const/4 p1, 0x0

    .line 1010
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    return-void
.end method

.method public removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 1092
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet. Use TECameraVideoRecorder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V
    .registers 2

    return-void
.end method

.method public removeSlamDetectListener(Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;)V
    .registers 2

    .line 1148
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESlamDetectListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/ConcurrentList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTrack(II)I
    .registers 3

    .line 673
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
    .registers 6

    .line 0
    return-void
.end method

.method public renderFrame(Lcom/ss/android/ttve/model/VEFrame;IILcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
    .registers 5

    .line 0
    return-void
.end method

.method public renderFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/vesdk/VEGetFrameSettings;)V
    .registers 3

    .line 0
    return-void
.end method

.method public renderFrame(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I
.end method

.method public resumeMediaRecord()V
    .registers 1

    return-void
.end method

.method public abstract rotateReactionWindow(F)F
.end method

.method public runTask(Ljava/lang/Runnable;)V
    .registers 2

    .line 685
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract scaleReactionWindow(F)[I
.end method

.method public seekTrack(IIJ)I
    .registers 5

    .line 717
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract sendEffectMsg(IJJLjava/lang/String;)V
.end method

.method public setAlgorithmChangeMsgEnable(IZ)V
    .registers 3

    return-void
.end method

.method public abstract setAlgorithmPreConfig(II)I
.end method

.method public setAudioCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V
    .registers 2

    return-void
.end method

.method public setAudioDevice(Z)V
    .registers 2

    return-void
.end method

.method public setAudioRecordStateCallback(Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;)V
    .registers 2

    return-void
.end method

.method public setAudioRecordVolumeDetectCallback(Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVeAudioRecordVolumeCallback:Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;

    return-void
.end method

.method public setAudioRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

    return-void
.end method

.method public setBackground(IIII)V
    .registers 5

    return-void
.end method

.method public abstract setBeautyFace(ILjava/lang/String;)I
.end method

.method public abstract setBeautyFaceIntensity(FF)I
.end method

.method public abstract setBeautyIntensity(IF)I
.end method

.method public setBgmMute(Z)V
    .registers 2

    return-void
.end method

.method public setCameraClose(Z)V
    .registers 2

    return-void
.end method

.method public abstract setCameraFirstFrameOptimize(Z)V
.end method

.method public setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V
    .registers 2

    .line 734
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    return-void
.end method

.method public setCameraZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V
    .registers 2

    .line 738
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    return-void
.end method

.method public setCaptureMirror(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract setCaptureMirror(Z)V
.end method

.method public setCaptureResize(Z[I[I)V
    .registers 4

    return-void
.end method

.method public setClientState(I)V
    .registers 2

    return-void
.end method

.method public setCommonCallback(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 634
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setComposerMode(II)I
.end method

.method public abstract setComposerNodes([Ljava/lang/String;I)I
.end method

.method public abstract setComposerResourcePath(Ljava/lang/String;)I
.end method

.method public abstract setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDLEEnable(Z)V
.end method

.method public setDebugSettings(Lcom/ss/android/vesdk/VEDebugSettings;)V
    .registers 2

    return-void
.end method

.method public setDetectInterval(I)V
    .registers 2

    return-void
.end method

.method public setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V
    .registers 3

    .line 1074
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mDetectListener:Lcom/ss/android/vesdk/VERecorder$DetectListener;

    return-void
.end method

.method public setDetectionMode(Z)V
    .registers 2

    return-void
.end method

.method public setDeviceRotation(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract setDeviceRotation([F)V
.end method

.method public setDeviceRotation([FD)V
    .registers 4

    .line 1133
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDeviceRotation([F)V

    return-void
.end method

.method public setDisplayParamsListener(Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;)V
    .registers 2

    return-void
.end method

.method public setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setDropFrame(I)V
.end method

.method public abstract setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V
.end method

.method public setEffectAudioManagerCallback(Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setEffectBgmEnable(Z)V
.end method

.method public abstract setEffectMaxMemoryCache(I)I
.end method

.method public setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .registers 2

    .line 1070
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    return-void
.end method

.method public setEffectSlamEnable(Z)V
    .registers 2

    return-void
.end method

.method abstract setEnableAEC(ZLjava/lang/String;)I
.end method

.method public abstract setEnableDuetV2(Z)V
.end method

.method public setEnableEarBack(Z)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setEnableLoudness(ZI)I
.end method

.method public setExposureCompensation(I)V
    .registers 2

    .line 812
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V
    .registers 4

    return-void
.end method

.method public abstract setFaceMakeUp(Ljava/lang/String;)I
.end method

.method public abstract setFaceMakeUp(Ljava/lang/String;FF)I
.end method

.method public abstract setFaceReshape(Ljava/lang/String;FF)I
.end method

.method public abstract setFilter(Ljava/lang/String;FZ)I
.end method

.method public abstract setFilter(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method public abstract setFilterNew(Ljava/lang/String;F)I
.end method

.method public abstract setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V
.end method

.method public setFocus(FF)V
    .registers 3

    .line 784
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFocus(FFII)V
    .registers 5

    .line 788
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 2

    .line 792
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFocusWithFaceDetect()V
    .registers 2

    .line 796
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFocusWithFaceDetect(Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 2

    .line 800
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFollowShotDisplayDegree(I)V
    .registers 2

    return-void
.end method

.method public setFollowingShotWindowsBackground(IIII)V
    .registers 5

    return-void
.end method

.method public setForceAlgorithmEnableCount(I)V
    .registers 2

    return-void
.end method

.method public setForceAlgorithmExecuteCount(I)V
    .registers 2

    return-void
.end method

.method public setFrameEffectCallback(Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;)V
    .registers 2

    return-void
.end method

.method public setHandDetectLowpowerEnable(Z)V
    .registers 2

    return-void
.end method

.method public setImageExposure(F)V
    .registers 2

    return-void
.end method

.method public setLandscape(III)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setLargeMattingModelEnable(Z)V
    .registers 2

    return-void
.end method

.method public setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
    .registers 3

    return-void
.end method

.method public abstract setMaleMakeupState(Z)I
.end method

.method public setMockPreviewSettings(Landroid/graphics/Bitmap;II)V
    .registers 10

    if-eqz p1, :cond_c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1362
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/TERecorderBase;->renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    return-void

    .line 1364
    :cond_c
    const-string p0, "TERecorderBase"

    const-string p1, "setMockPreviewSettings warning, bitmap is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMusicNodes(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setOnErrorListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 626
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mOnFrameAvailableListenerExt:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

    return-void
.end method

.method public setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 630
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnPictureTakenProxyListener(Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;)V
    .registers 2

    .line 1695
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPictureTakenProxyListener:Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;

    return-void
.end method

.method public setOnPreviewDataCallbackListener(Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;)V
    .registers 2

    .line 1675
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewDataCallbackListener:Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;

    return-void
.end method

.method public setPaddingBottomInRatio34(F)V
    .registers 2

    .line 283
    iput p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mViewportPaddingBottomInRadio34:F

    return-void
.end method

.method public setPerfTimingByKey(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method

.method public setPreSavePcmSize(I)V
    .registers 2

    return-void
.end method

.method public abstract setPreviewDuetVideoPaused(Z)V
.end method

.method public setPreviewRadioListener(Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V
    .registers 2

    .line 943
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEPreviewRadioListener:Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;

    return-void
.end method

.method public abstract setPreviewRatio(IFLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)V
.end method

.method public abstract setPreviewRotation(I)V
.end method

.method public abstract setReactPosMarginInVideoRecordPixel(IIII)V
.end method

.method public abstract setReactionBorderParam(II)V
.end method

.method public abstract setReactionMaskImagePath(Ljava/lang/String;Z)Z
.end method

.method public setRecordBGM(Ljava/lang/String;JJI)I
    .registers 7

    .line 418
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mBgmPath:Ljava/lang/String;

    .line 419
    iput-wide p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimIn:J

    .line 420
    iput-wide p4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimOut:J

    .line 421
    iput p6, p0, Lcom/ss/android/vesdk/TERecorderBase;->mBgmType:I

    const/4 p0, 0x0

    return p0
.end method

.method public setRecordMaxDuration(J)V
    .registers 3

    .line 618
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecordPrepareTime(J)I
    .registers 3

    .line 681
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecorderPreviewListener(Lcom/ss/android/vesdk/VEListener$VERecorderPreviewListener;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderPreviewListener:Lcom/ss/android/vesdk/VEListener$VERecorderPreviewListener;

    return-void
.end method

.method public setRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    return-void
.end method

.method public abstract setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setReshapeIntensity(IF)I
.end method

.method public abstract setReshapeIntensityDict(Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setReshapeParam(Ljava/lang/String;Ljava/util/Map;)I
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
.end method

.method public abstract setReshapeResource(Ljava/lang/String;)I
.end method

.method public setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSATZoomListener:Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;

    return-void
.end method

.method public setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setScanArea(FFFF)V
.end method

.method public setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mShaderZoomListener:Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;

    return-void
.end method

.method public abstract setSharedTextureStatus(Z)Z
.end method

.method public abstract setSkinTone(Ljava/lang/String;)I
.end method

.method public abstract setSkinToneIntensity(F)I
.end method

.method public setSlamFace(Landroid/graphics/Bitmap;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public abstract setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
.end method

.method public abstract setSwapDuetRegion(Z)V
.end method

.method public abstract setSwapReactionRegion(Z)V
.end method

.method public setTrackSpeed(IIF)I
    .registers 4

    .line 721
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUseMultiPreviewRatio(Z)V
    .registers 2

    return-void
.end method

.method public abstract setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I
.end method

.method public abstract setVideoBgSpeed(D)V
.end method

.method public setVideoEncodeRotation(I)V
    .registers 2

    return-void
.end method

.method public setVoiceActivityDetectCallback(Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVeVoiceActivityDetectionCallback:Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;

    return-void
.end method

.method public setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V
    .registers 2

    .line 601
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVolumes:Lcom/ss/android/vesdk/VEVolumeParam;

    return-void
.end method

.method public setWaterMark(Lcom/ss/android/vesdk/VEWatermarkParam;)V
    .registers 2

    .line 939
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    return-void
.end method

.method public abstract shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)I
.end method

.method public abstract shotScreen(IIZZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)I
.end method

.method public abstract shotScreen(Lcom/ss/android/vesdk/VEShotScreenSettings;)I
.end method

.method public abstract shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)I
.end method

.method public abstract shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Z)I
.end method

.method public abstract slamDeviceConfig(ZZZZ)I
.end method

.method public abstract slamGetTextBitmap(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)I
.end method

.method public abstract slamGetTextLimitCount(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
.end method

.method public abstract slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
.end method

.method public abstract slamNotifyHideKeyBoard(Z)I
.end method

.method public abstract slamProcessDoubleClickEvent(FF)I
.end method

.method public abstract slamProcessIngestAcc(DDDD)I
.end method

.method public abstract slamProcessIngestGra(DDDD)I
.end method

.method public abstract slamProcessIngestGyr(DDDD)I
.end method

.method public abstract slamProcessIngestOri([DD)I
.end method

.method public abstract slamProcessPanEvent(FFFFF)I
.end method

.method public abstract slamProcessRotationEvent(FF)I
.end method

.method public abstract slamProcessScaleEvent(FF)I
.end method

.method public abstract slamProcessTouchEventByType(IFFI)I
.end method

.method public abstract slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method public abstract slamSetLanguage(Ljava/lang/String;)I
.end method

.method public abstract startAudioRecorder()V
.end method

.method public startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 581
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startCameraPreview()V
    .registers 2

    .line 750
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startCameraPreview(Lcom/ss/android/vesdk/camera/ICameraPreview;)V
    .registers 2

    .line 754
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startFollowingShotPreview(Landroid/view/Surface;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public startMediaRecord(Ljava/lang/String;Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 3

    return-void
.end method

.method public startPlayTrack(II)I
    .registers 3

    .line 705
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startPlayTrack(IIZ)I
    .registers 4

    .line 709
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startPrePlay(Lcom/ss/android/vesdk/model/VEPrePlayParams;)I
    .registers 2

    .line 689
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract startPreview(Landroid/view/Surface;)V
.end method

.method public startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 444
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startRecord(F)I
    .registers 2

    .line 494
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startRecord(Ljava/lang/String;F)I
    .registers 3

    .line 490
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 498
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startRecordAsync(FLcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 502
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startRender()I
    .registers 1

    const/16 p0, -0xc8

    return p0
.end method

.method public startRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    return-void
.end method

.method public startShaderZoom(F)V
    .registers 2

    .line 845
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startZoom(F)V
    .registers 2

    .line 841
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract stopAudioRecorder()V
.end method

.method public stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 585
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopCameraPreview()V
    .registers 2

    .line 758
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopFollowShowRender(Z)V
    .registers 2

    return-void
.end method

.method public stopMediaRecord(Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 2

    return-void
.end method

.method public stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;)I
    .registers 2

    .line 701
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I
    .registers 3

    .line 697
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopPreview(Z)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract stopPreview()V
.end method

.method public stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 464
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;Z)V
    .registers 3

    .line 468
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopPreviewParallel()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract stopRecord()I
.end method

.method public stopRecord(Lcom/ss/android/vesdk/VEListener$VECallListener;)I
    .registers 2

    .line 522
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract stopRecord(Z)I
.end method

.method public stopRecordAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 518
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopRender(Z)V
    .registers 2

    return-void
.end method

.method public stopZoom()V
    .registers 2

    .line 849
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
.end method

.method public swapMainAndPipRenderTarget(Z)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public switchCameraMode(I)I
    .registers 2

    .line 853
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public switchEffect(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I
    .registers 8

    if-nez p1, :cond_5

    const/16 p0, -0x64

    return p0

    .line 970
    :cond_5
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 973
    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_23

    .line 974
    iget-object v1, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 975
    array-length v3, v1

    if-lez v3, :cond_23

    .line 976
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    goto :goto_25

    .line 979
    :cond_23
    const-string v1, ""

    :goto_25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "0"

    if-eqz v3, :cond_2f

    move-object v3, v4

    goto :goto_30

    :cond_2f
    move-object v3, v1

    :goto_30
    const-string v5, "iesve_verecorder_set_sticker_id"

    invoke-virtual {v0, v5, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v3

    const-string v5, "old"

    .line 980
    invoke-virtual {v3, v5, v2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 981
    const-string v3, "iesve_verecorder_set_sticker"

    invoke-static {v3, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 983
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->switchEffectInternal(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    move-result p0

    .line 986
    :try_start_44
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 987
    const-string v0, "stickerId"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    move-object v1, v4

    :cond_52
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 988
    const-string v0, "resultCode"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 990
    const-string v0, "vesdk_event_recorder_switch_effect"

    const-string v1, "behavior"

    invoke-static {v0, p1, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_61} :catch_62

    return p0

    :catch_62
    move-exception p1

    .line 992
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method protected switchEffectInternal(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I
    .registers 2

    .line 998
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)V
    .registers 2

    .line 768
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public switchTorch(Z)V
    .registers 2

    .line 764
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No longer supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public tryRestore(Ljava/lang/String;IIII)I
    .registers 6

    .line 426
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public tryRestore(Ljava/util/List;Ljava/lang/String;II)I
    .registers 5
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

    .line 430
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public tryRestoreAsync(Ljava/util/List;Ljava/lang/String;IILcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 6
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

    .line 434
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegFaceInfoCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 1014
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    return-void
.end method

.method public unRegHandDetectCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 1048
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEHandDetectCallback:Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;

    return-void
.end method

.method public unRegSkeletonDetectCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 1056
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESkeletonDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

    return-void
.end method

.method public unRegSmartBeautyCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 1064
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESmartBeautyCallback:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

    return-void
.end method

.method public unregEffectAlgorithmCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 1022
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEEffectAlgorithmCallback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

    return-void
.end method

.method public unregSceneDetectCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 1044
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESceneDetectCallback:Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;

    return-void
.end method

.method public upExposureCompensation()V
    .registers 2

    .line 816
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract updateAlgorithmRuntimeParam(IF)V
.end method

.method public updateCameraOrientation()V
    .registers 2

    .line 858
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No longer supported in new refactored version"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateClipsTimelineParam(IILjava/util/Map;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;",
            ">;)I"
        }
    .end annotation

    .line 677
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public abstract updateReactionRegion(IIIIF)[I
.end method

.method public abstract updateRotation(FFF)V
.end method

.method public updateTrack(IILcom/ss/android/ttve/model/VETrackParams;)I
    .registers 4

    .line 669
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only supported in new refactored version"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateVideoDecodeChainByTimeline()V
    .registers 1

    return-void
.end method

.method public updateVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    return-void
.end method

.method public useAudioGraphOutput(ZZZZ)V
    .registers 5

    return-void
.end method

.method public abstract useMusic(Z)V
.end method
