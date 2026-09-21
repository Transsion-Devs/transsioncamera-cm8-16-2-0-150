.class public Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 273
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native DLWCallback_change_ownership(Lcom/bytedance/ies/nle/editor_jni/DLWCallback;JZ)V
.end method

.method public static final native DLWCallback_compileError(JLcom/bytedance/ies/nle/editor_jni/DLWCallback;I)V
.end method

.method public static final native DLWCallback_director_connect(Lcom/bytedance/ies/nle/editor_jni/DLWCallback;JZZ)V
.end method

.method public static final native DLWCallback_onProgress(JLcom/bytedance/ies/nle/editor_jni/DLWCallback;F)V
.end method

.method public static final native DynamicLightWaveUtil_cancelCompile(JLcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;)I
.end method

.method public static final native DynamicLightWaveUtil_compile(JLcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;Ljava/lang/String;ZJLcom/bytedance/ies/nle/editor_jni/DLWCallback;)I
.end method

.method public static final native DynamicLightWaveUtil_destroy(JLcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;)I
.end method

.method public static final native DynamicLightWaveUtil_insertClipAndFilter(JLcom/bytedance/ies/nle/editor_jni/DynamicLightWaveUtil;JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;Ljava/lang/String;)I
.end method

.method public static final native NLEAlgorithmCallbackWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;JZ)V
.end method

.method public static final native NLEAlgorithmCallbackWrapper_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;JZZ)V
.end method

.method public static final native NLEAlgorithmCallbackWrapper_onProgress(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;F)V
.end method

.method public static final native NLEAlgorithmController_beginGenVideoFrames(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;IJLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;)I
.end method

.method public static final native NLEAlgorithmController_cancelGenVideoFrame(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;I)I
.end method

.method public static final native NLEAlgorithmController_checkScoresFile(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;Ljava/lang/String;)I
.end method

.method public static final native NLEAlgorithmController_genRandomSolve(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I
.end method

.method public static final native NLEAlgorithmController_genSmartCutting(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I
.end method

.method public static final native NLEAlgorithmController_getAllVideoRangeData(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)J
.end method

.method public static final native NLEAlgorithmController_initBingoAlgorithm(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I
.end method

.method public static final native NLEAlgorithmController_initSmartAlgorithm(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;JJJLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
.end method

.method public static final native NLEAlgorithmController_reInitSmartAlgorithmIfPossible(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I
.end method

.method public static final native NLEAlgorithmController_removeAllVideoSound(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I
.end method

.method public static final native NLEAlgorithmController_restoreAllVideoSound(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I
.end method

.method public static final native NLEAlgorithmController_setInterimScoresToFile(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;Ljava/lang/String;)I
.end method

.method public static final native NLEAlgorithmController_setMusicAndResult(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;Ljava/lang/String;IIJLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
.end method

.method public static final native NLEAlgorithmController_updateAlgorithmFromNormal(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;)I
.end method

.method public static final native NLEBrushRuntimeController_begin2DBrush(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)I
.end method

.method public static final native NLEBrushRuntimeController_end2DBrush(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;Ljava/lang/String;)I
.end method

.method public static final native NLEBrushRuntimeController_get2DBrushStrokeCount(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)I
.end method

.method public static final native NLEBrushRuntimeController_is2DBrushEmpty(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)Z
.end method

.method public static final native NLEBrushRuntimeController_processPanEvent(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;FFFFF)I
.end method

.method public static final native NLEBrushRuntimeController_processTouchDownEvent(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;FFI)I
.end method

.method public static final native NLEBrushRuntimeController_processTouchUpEvent(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;FFI)I
.end method

.method public static final native NLEBrushRuntimeController_set2DBrushCanvasAlpha(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;F)I
.end method

.method public static final native NLEBrushRuntimeController_set2DBrushColor(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;I)I
.end method

.method public static final native NLEBrushRuntimeController_set2DBrushSize(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;F)I
.end method

.method public static final native NLEBrushRuntimeController_undo2DBrush(JLcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;)I
.end method

.method public static final native NLECompileListenerWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;JZ)V
.end method

.method public static final native NLECompileListenerWrapper_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;JZZ)V
.end method

.method public static final native NLECompileListenerWrapper_onCompileDone(JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)V
.end method

.method public static final native NLECompileListenerWrapper_onCompileDoneSwigExplicitNLECompileListenerWrapper(JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)V
.end method

.method public static final native NLECompileListenerWrapper_onCompileError(JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;IIFLjava/lang/String;)V
.end method

.method public static final native NLECompileListenerWrapper_onCompileErrorSwigExplicitNLECompileListenerWrapper(JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;IIFLjava/lang/String;)V
.end method

.method public static final native NLECompileListenerWrapper_onCompileProgress(JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;F)V
.end method

.method public static final native NLECompileListenerWrapper_onCompileProgressSwigExplicitNLECompileListenerWrapper(JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;F)V
.end method

.method public static final native NLEEffectMsgListenerWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;JZ)V
.end method

.method public static final native NLEEffectMsgListenerWrapper_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;JZZ)V
.end method

.method public static final native NLEEffectMsgListenerWrapper_onMessageReceived(JLcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;IIILjava/lang/String;)V
.end method

.method public static final native NLEEffectMsgListenerWrapper_onMessageReceivedSwigExplicitNLEEffectMsgListenerWrapper(JLcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;IIILjava/lang/String;)V
.end method

.method public static final native NLEEffectRuntimeController_removeEffectMessageCenterCallback(JLcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;)I
.end method

.method public static final native NLEEffectRuntimeController_setEffectMessageCenterCallback(JLcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;JLcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;)I
.end method

.method public static final native NLEEncodeListenerWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;JZ)V
.end method

.method public static final native NLEEncodeListenerWrapper_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;JZZ)V
.end method

.method public static final native NLEEncodeListenerWrapper_onCompressBuffer(JLcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;[BIIZ)V
.end method

.method public static final native NLEExporterController_cancelCompile(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;)I
.end method

.method public static final native NLEExporterController_compile__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
.end method

.method public static final native NLEExporterController_compile__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
.end method

.method public static final native NLEExporterController_compile__SWIG_2(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)Z
.end method

.method public static final native NLEExporterController_compile__SWIG_3(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;JLcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)Z
.end method

.method public static final native NLEExporterController_getRemuxErrorCode(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I
.end method

.method public static final native NLEExporterController_isEnableRemuxVideo(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;JLcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
.end method

.method public static final native NLEExporterController_isWatermarkCompileEncode(JLcom/bytedance/ies/nle/editor_jni/NLEExporterController;)I
.end method

.method public static final native NLEFilterRuntimeController_checkComposerNodeExclusion(JLcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native NLEFilterRuntimeController_doLensOneKeyDetect(JLcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;)I
.end method

.method public static final native NLEFilterRuntimeController_getColorFilterIntensity(JLcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;Ljava/lang/String;)F
.end method

.method public static final native NLEFilterRuntimeController_updateMultiComposerNodes(JLcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;JLcom/bytedance/ies/nle/editor_jni/VecString;JLcom/bytedance/ies/nle/editor_jni/VecString;JLcom/bytedance/ies/nle/editor_jni/VecFloat;Ljava/lang/String;)I
.end method

.method public static final native NLEInfoStickerBufferCallbackWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;JZ)V
.end method

.method public static final native NLEInfoStickerBufferCallbackWrapper_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;JZZ)V
.end method

.method public static final native NLEInfoStickerBufferCallbackWrapper_onGetBuffer(JLcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public static final native NLEListenerGetImageWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;JZ)V
.end method

.method public static final native NLEListenerGetImageWrapper_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;JZZ)V
.end method

.method public static final native NLEListenerGetImageWrapper_onGetImageDataCalled(JLcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;[BIIIF)I
.end method

.method public static final native NLEMVInfoController_getMVDuration(JLcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;)J
.end method

.method public static final native NLEMVInfoController_getMVInfo(JLcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;)J
.end method

.method public static final native NLEMVInfoController_getMVOriginalBackgroundAudio(JLcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;)J
.end method

.method public static final native NLEMattingRuntimeController_removeMattingListener(JLcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;)V
.end method

.method public static final native NLEMattingRuntimeController_setMattingListener(JLcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;JLcom/bytedance/ies/nle/editor_jni/INLEMattingListener;)V
.end method

.method public static final native NLEMediaRuntimeController_addMetadata(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native NLEMediaRuntimeController_cancelGetVideoFrames(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)I
.end method

.method public static final native NLEMediaRuntimeController_findVEParentIdByNLESlotUUID(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEMediaRuntimeController_getCurrDecodeImage(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/Object;Ljava/lang/String;II)I
.end method

.method public static final native NLEMediaRuntimeController_getCurrDecodeImageSize(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;)J
.end method

.method public static final native NLEMediaRuntimeController_getDisplayImage(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/Object;)I
.end method

.method public static final native NLEMediaRuntimeController_getFileInfo(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEMediaRuntimeController_getImages(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;JLcom/bytedance/ies/nle/editor_jni/VecLongLong;IIIJLcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)I
.end method

.method public static final native NLEMediaRuntimeController_getInitSize__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)J
.end method

.method public static final native NLEMediaRuntimeController_getInitSize__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;II)J
.end method

.method public static final native NLEMediaRuntimeController_getKeyFrameParam(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public static final native NLEMediaRuntimeController_getMetadata(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEMediaRuntimeController_getPlayFps(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)F
.end method

.method public static final native NLEMediaRuntimeController_getPreviewFillMode(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)I
.end method

.method public static final native NLEMediaRuntimeController_getSingleTrackProcessedImage(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/Object;Ljava/lang/String;)I
.end method

.method public static final native NLEMediaRuntimeController_getUniqueKey(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)Ljava/lang/String;
.end method

.method public static final native NLEMediaRuntimeController_getVideoResolution(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)J
.end method

.method public static final native NLEMediaRuntimeController_isUseFilterProcess(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)Z
.end method

.method public static final native NLEMediaRuntimeController_lockSeekVideoClip(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;)I
.end method

.method public static final native NLEMediaRuntimeController_setBackgroundColor(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;I)V
.end method

.method public static final native NLEMediaRuntimeController_setCanvasMinDuration(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;JZ)I
.end method

.method public static final native NLEMediaRuntimeController_setCanvasSize(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;II)V
.end method

.method public static final native NLEMediaRuntimeController_setDisplayPos(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;IIII)V
.end method

.method public static final native NLEMediaRuntimeController_setDisplayState(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;FFFII)V
.end method

.method public static final native NLEMediaRuntimeController_setEncoderListener(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;JLcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;)V
.end method

.method public static final native NLEMediaRuntimeController_setFilterEnable(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/String;ZZ)I
.end method

.method public static final native NLEMediaRuntimeController_setHeightWidthRatio(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;F)I
.end method

.method public static final native NLEMediaRuntimeController_setMaxWidthAndHeight(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;JJ)I
.end method

.method public static final native NLEMediaRuntimeController_setPlayFps(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;F)V
.end method

.method public static final native NLEMediaRuntimeController_setPreviewFillMode(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;I)I
.end method

.method public static final native NLEMediaRuntimeController_setPreviewSurfaceImage(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;Ljava/lang/Object;Z)I
.end method

.method public static final native NLEMediaRuntimeController_unlockSeekVideoClip(JLcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;)I
.end method

.method public static final native NLEMediaSession_getAlgorithmApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getBrushApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getDataSource(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getEffectApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getExporterApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getFilterApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getMVApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getMattingApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getMediaRuntimeApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getMediaSettingApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getPlayerApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_getStickerApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
.end method

.method public static final native NLEMediaSession_initVeBufferAuth(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;Ljava/lang/Object;Ljava/lang/String;[B)V
.end method

.method public static final native NLEMediaSession_setDataSource(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V
.end method

.method public static final native NLEMediaSettingsController_enableEffect(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)I
.end method

.method public static final native NLEMediaSettingsController_enableHighSpeedForSingle(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_enableImageEditor(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_enableSimpleProcessor(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_setAutoPrepare(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_setDestroyVersion(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)I
.end method

.method public static final native NLEMediaSettingsController_setDldEnabled(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_setDldThrVal(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;I)V
.end method

.method public static final native NLEMediaSettingsController_setDleEnabled(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_setDleEnabledPreview(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_setForceDetectForFirstFrameByClip(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_setImageResizeInfo(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;IIII)V
.end method

.method public static final native NLEMediaSettingsController_setLoopPlay(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEMediaSettingsController_setPageMode(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;I)V
.end method

.method public static final native NLEMediaSettingsController_setPreviewFps(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;I)I
.end method

.method public static final native NLEMediaSettingsController_setSurfaceReDraw(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;Z)V
.end method

.method public static final native NLEOnFrameAvailableWrapper_change_ownership(Lcom/bytedance/ies/nle/editor_jni/NLEOnFrameAvailableWrapper;JZ)V
.end method

.method public static final native NLEOnFrameAvailableWrapper_director_connect(Lcom/bytedance/ies/nle/editor_jni/NLEOnFrameAvailableWrapper;JZZ)V
.end method

.method public static final native NLEOnFrameAvailableWrapper_onGetFrame(JLcom/bytedance/ies/nle/editor_jni/NLEOnFrameAvailableWrapper;[BJJJ)Z
.end method

.method public static final native NLEPlayer_addMessageListener(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JLcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;)V
.end method

.method public static final native NLEPlayer_destroy(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEPlayer_dumpVEModel(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)Ljava/lang/String;
.end method

.method public static final native NLEPlayer_dumpVESequence(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)Ljava/lang/String;
.end method

.method public static final native NLEPlayer_getCurrentPosition(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)J
.end method

.method public static final native NLEPlayer_getDuration(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)J
.end method

.method public static final native NLEPlayer_pause(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEPlayer_play(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEPlayer_prepare(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEPlayer_rePrepare(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEPlayer_refreshCurrentFrame(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;I)I
.end method

.method public static final native NLEPlayer_releaseAndroidSurface(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)V
.end method

.method public static final native NLEPlayer_releaseEngine__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;Z)I
.end method

.method public static final native NLEPlayer_releaseEngine__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEPlayer_releaseResource(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEPlayer_seekTime(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JI)I
.end method

.method public static final native NLEPlayer_seekWithFrame(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JJLcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)I
.end method

.method public static final native NLEPlayer_setAndroidSurface(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;Ljava/lang/Object;)I
.end method

.method public static final native NLEPlayer_setNleModel(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V
.end method

.method public static final native NLEPlayer_setPlayRange__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JJI)I
.end method

.method public static final native NLEPlayer_setPlayRange__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;JJ)I
.end method

.method public static final native NLEPlayer_setPreviewSurfaceSize(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;II)I
.end method

.method public static final native NLEPlayer_state(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEPlayer_stop(JLcom/bytedance/ies/nle/editor_jni/NLEPlayer;)I
.end method

.method public static final native NLEStickerController_beginInfoStickerPin(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)I
.end method

.method public static final native NLEStickerController_cancelInfoStickerPin(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)I
.end method

.method public static final native NLEStickerController_enableStickerAnimationPreview(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;Z)I
.end method

.method public static final native NLEStickerController_getInfoStickerBoundingBox(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;Z)J
.end method

.method public static final native NLEStickerController_getInfoStickerPinData(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)[B
.end method

.method public static final native NLEStickerController_getInfoStickerPinState(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)I
.end method

.method public static final native NLEStickerController_getInfoStickerRotate(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)F
.end method

.method public static final native NLEStickerController_getInfoStickerScale(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)F
.end method

.method public static final native NLEStickerController_getInfoStickerTemplateParams(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native NLEStickerController_getInfoStickerVisible(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)Z
.end method

.method public static final native NLEStickerController_getSrtInfoStickerInitPosition(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)J
.end method

.method public static final native NLEStickerController_getStickerBoundingBox(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;JLcom/bytedance/ies/nle/editor_jni/NLETrackSlot;JLcom/bytedance/ies/nle/editor_jni/NLERectF;Z)I
.end method

.method public static final native NLEStickerController_getStickerIsDynamic(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)Z
.end method

.method public static final native NLEStickerController_isInfoStickerAnimatable(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;)Z
.end method

.method public static final native NLEStickerController_setInfoStickerBufferCallback(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;JLcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;)I
.end method

.method public static final native NLEStickerController_setInfoStickerRestoreMode(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;I)I
.end method

.method public static final native NLEStickerController_setInfoStickerTransform(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;FFFFF)I
.end method

.method public static final native NLEStickerController_setSrtManipulateState(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;Ljava/lang/String;Z)I
.end method

.method public static final native NLEStickerController_startStickerAnimationPreview(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;JI)I
.end method

.method public static final native NLEStickerController_stopStickerAnimationPreview(JLcom/bytedance/ies/nle/editor_jni/NLEStickerController;)I
.end method

.method public static final native SpeedConfig_mode_get(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;)I
.end method

.method public static final native SpeedConfig_mode_set(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;I)V
.end method

.method public static final native SpeedConfig_points_get(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;)J
.end method

.method public static final native SpeedConfig_points_set(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;JLcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;)V
.end method

.method public static final native SpeedConfig_repeat_duration_get(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;)J
.end method

.method public static final native SpeedConfig_repeat_duration_set(JLcom/bytedance/ies/nle/editor_jni/SpeedConfig;J)V
.end method

.method public static SwigDirector_DLWCallback_compileError(Lcom/bytedance/ies/nle/editor_jni/DLWCallback;I)V
    .registers 2

    .line 241
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/DLWCallback;->compileError(I)V

    return-void
.end method

.method public static SwigDirector_DLWCallback_onProgress(Lcom/bytedance/ies/nle/editor_jni/DLWCallback;F)V
    .registers 2

    .line 238
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/DLWCallback;->onProgress(F)V

    return-void
.end method

.method public static SwigDirector_NLEAlgorithmCallbackWrapper_onProgress(Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;F)V
    .registers 2

    .line 265
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;->onProgress(F)V

    return-void
.end method

.method public static SwigDirector_NLECompileListenerWrapper_onCompileDone(Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;)V
    .registers 1

    .line 253
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;->onCompileDone()V

    return-void
.end method

.method public static SwigDirector_NLECompileListenerWrapper_onCompileError(Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;IIFLjava/lang/String;)V
    .registers 5

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;->onCompileError(IIFLjava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_NLECompileListenerWrapper_onCompileProgress(Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;F)V
    .registers 2

    .line 256
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLECompileListenerWrapper;->onCompileProgress(F)V

    return-void
.end method

.method public static SwigDirector_NLEEffectMsgListenerWrapper_onMessageReceived(Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;IIILjava/lang/String;)V
    .registers 5

    .line 268
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;->onMessageReceived(IIILjava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_NLEEncodeListenerWrapper_onCompressBuffer(Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;[BIIZ)V
    .registers 5

    .line 259
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;->onCompressBuffer([BIIZ)V

    return-void
.end method

.method public static SwigDirector_NLEInfoStickerBufferCallbackWrapper_onGetBuffer(Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 262
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;->onGetBuffer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static SwigDirector_NLEListenerGetImageWrapper_onGetImageDataCalled(Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;[BIIIF)I
    .registers 6

    .line 247
    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;->onGetImageDataCalled([BIIIF)I

    move-result p0

    return p0
.end method

.method public static SwigDirector_NLEOnFrameAvailableWrapper_onGetFrame(Lcom/bytedance/ies/nle/editor_jni/NLEOnFrameAvailableWrapper;[BJJJ)Z
    .registers 8

    .line 244
    invoke-virtual/range {p0 .. p7}, Lcom/bytedance/ies/nle/editor_jni/NLEOnFrameAvailableWrapper;->onGetFrame([BJJJ)Z

    move-result p0

    return p0
.end method

.method public static final native delete_DLWCallback(J)V
.end method

.method public static final native delete_DynamicLightWaveUtil(J)V
.end method

.method public static final native delete_NLEAlgorithmCallbackWrapper(J)V
.end method

.method public static final native delete_NLEAlgorithmController(J)V
.end method

.method public static final native delete_NLEBrushRuntimeController(J)V
.end method

.method public static final native delete_NLECompileListenerWrapper(J)V
.end method

.method public static final native delete_NLEEffectMsgListenerWrapper(J)V
.end method

.method public static final native delete_NLEEffectRuntimeController(J)V
.end method

.method public static final native delete_NLEEncodeListenerWrapper(J)V
.end method

.method public static final native delete_NLEExporterController(J)V
.end method

.method public static final native delete_NLEFilterRuntimeController(J)V
.end method

.method public static final native delete_NLEInfoStickerBufferCallbackWrapper(J)V
.end method

.method public static final native delete_NLEListenerGetImageWrapper(J)V
.end method

.method public static final native delete_NLEMVInfoController(J)V
.end method

.method public static final native delete_NLEMattingRuntimeController(J)V
.end method

.method public static final native delete_NLEMediaRuntimeController(J)V
.end method

.method public static final native delete_NLEMediaSession(J)V
.end method

.method public static final native delete_NLEMediaSettingsController(J)V
.end method

.method public static final native delete_NLEOnFrameAvailableWrapper(J)V
.end method

.method public static final native delete_NLEPlayer(J)V
.end method

.method public static final native delete_NLEStickerController(J)V
.end method

.method public static final native delete_SpeedConfig(J)V
.end method

.method public static final native new_DLWCallback()J
.end method

.method public static final native new_DynamicLightWaveUtil(JJJLjava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native new_NLEAlgorithmCallbackWrapper()J
.end method

.method public static final native new_NLECompileListenerWrapper()J
.end method

.method public static final native new_NLEEffectMsgListenerWrapper()J
.end method

.method public static final native new_NLEEncodeListenerWrapper()J
.end method

.method public static final native new_NLEInfoStickerBufferCallbackWrapper()J
.end method

.method public static final native new_NLEListenerGetImageWrapper()J
.end method

.method public static final native new_NLEMediaSession(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)J
.end method

.method public static final native new_NLEOnFrameAvailableWrapper()J
.end method

.method public static final native new_SpeedConfig()J
.end method

.method private static final native swig_module_init()V
.end method
