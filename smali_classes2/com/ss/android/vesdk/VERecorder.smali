.class public Lcom/ss/android/vesdk/VERecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;,
        Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;,
        Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;,
        Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;,
        Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;,
        Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;,
        Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;,
        Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;,
        Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;,
        Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;,
        Lcom/ss/android/vesdk/VERecorder$TouchEvent;,
        Lcom/ss/android/vesdk/VERecorder$GestureType;,
        Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;,
        Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;,
        Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;,
        Lcom/ss/android/vesdk/VERecorder$DetectListener;,
        Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;,
        Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;,
        Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;,
        Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;,
        Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;,
        Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;,
        Lcom/ss/android/vesdk/VERecorder$VEHandType;,
        Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;,
        Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;,
        Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;,
        Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;,
        Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;,
        Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioOptimizeFlag;,
        Lcom/ss/android/vesdk/VERecorder$FrameConfig;,
        Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;,
        Lcom/ss/android/vesdk/VERecorder$VERotation;,
        Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;,
        Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;,
        Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;,
        Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;,
        Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;,
        Lcom/ss/android/vesdk/VERecorder$IShotScreenOnInfoCallback;,
        Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;,
        Lcom/ss/android/vesdk/VERecorder$Status;
    }
.end annotation


# static fields
.field public static final CAMERA_TRACK_INDEX:I = 0x0

.field public static final MIC_TRACK_INDEX:I = 0x0

.field public static final RECORD_TRACK_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VERecorder"


# instance fields
.field private mFaceBeautifyDetectIndex:I

.field private mModelDownload:Lcom/ss/android/vesdk/lens/VEModelDownload$IModelDownload;

.field protected mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

.field protected mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

.field private mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/runtime/VERecorderResManager;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder;-><init>(Lcom/ss/android/vesdk/runtime/VERecorderResManager;Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/runtime/VERecorderResManager;Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)V
    .registers 5

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mModelDownload:Lcom/ss/android/vesdk/lens/VEModelDownload$IModelDownload;

    const/4 v0, -0x1

    .line 4329
    iput v0, p0, Lcom/ss/android/vesdk/VERecorder;->mFaceBeautifyDetectIndex:I

    .line 297
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    .line 298
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    .line 299
    invoke-virtual {p0, p2, p3}, Lcom/ss/android/vesdk/VERecorder;->getTERecorder(Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)Lcom/ss/android/vesdk/TERecorderBase;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/view/SurfaceView;)V
    .registers 5

    .line 203
    new-instance v0, Lcom/ss/android/vesdk/render/VERenderSurfaceView;

    invoke-direct {v0, p3}, Lcom/ss/android/vesdk/render/VERenderSurfaceView;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/view/TextureView;)V
    .registers 5

    .line 216
    new-instance v0, Lcom/ss/android/vesdk/render/VERenderTextureView;

    invoke-direct {v0, p3}, Lcom/ss/android/vesdk/render/VERenderTextureView;-><init>(Landroid/view/TextureView;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/SurfaceView;)V
    .registers 5

    .line 230
    new-instance v0, Lcom/ss/android/vesdk/render/VERenderSurfaceView;

    invoke-direct {v0, p3}, Lcom/ss/android/vesdk/render/VERenderSurfaceView;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/TextureView;)V
    .registers 5

    .line 242
    new-instance v0, Lcom/ss/android/vesdk/render/VERenderTextureView;

    invoke-direct {v0, p3}, Lcom/ss/android/vesdk/render/VERenderTextureView;-><init>(Landroid/view/TextureView;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)V
    .registers 5

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mModelDownload:Lcom/ss/android/vesdk/lens/VEModelDownload$IModelDownload;

    const/4 v0, -0x1

    .line 4329
    iput v0, p0, Lcom/ss/android/vesdk/VERecorder;->mFaceBeautifyDetectIndex:I

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 269
    new-instance v0, Lcom/ss/android/vesdk/runtime/VEDefaultRecorderResManager;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/runtime/VEDefaultRecorderResManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    .line 271
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    .line 272
    invoke-virtual {p0, p2, p3}, Lcom/ss/android/vesdk/VERecorder;->getTERecorder(Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)Lcom/ss/android/vesdk/TERecorderBase;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    return-void

    .line 267
    :cond_23
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 p1, -0x64

    const-string p2, "workSpace is null"

    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private setFilter(Ljava/lang/String;FZ)I
    .registers 9

    .line 2820
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 2822
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    .line 2823
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2824
    array-length v3, v1

    if-lez v3, :cond_1a

    .line 2825
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    goto :goto_1c

    .line 2829
    :cond_1a
    const-string v1, ""

    :goto_1c
    const/4 v3, 0x0

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 2830
    const-string v3, "iesve_verecorder_set_filter_click_idfilter_id"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v3

    const-string v4, "old"

    .line 2831
    invoke-virtual {v3, v4, v2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 2832
    const-string v3, "iesve_verecorder_set_filter_click"

    invoke-static {v3, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 2833
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setFilter(Ljava/lang/String;FZ)I

    move-result p0

    .line 2836
    :try_start_3d
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2837
    const-string p3, "filterId"

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2838
    const-string p3, "intensity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2839
    const-string p2, "tag"

    const-string p3, "setFilter"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2840
    const-string p2, "resultCode"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2841
    const-string p2, "vesdk_event_recorder_single_filter"

    const-string p3, "behavior"

    invoke-static {p2, p1, p3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_63} :catch_64

    return p0

    :catch_64
    move-exception p1

    .line 2843
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method


# virtual methods
.method public addDataSource(Lcom/ss/android/vesdk/VEDataSource;)V
    .registers 2

    .line 6924
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->addDataSource(Lcom/ss/android/vesdk/VEDataSource;)V

    return-void
.end method

.method public addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 4743
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 990
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 994
    :cond_d
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public addPipRenderTarget(Landroid/view/Surface;IILandroid/graphics/Bitmap;Z)Z
    .registers 6

    .line 6815
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->addPipRenderTarget(Landroid/view/Surface;IILandroid/graphics/Bitmap;Z)Z

    move-result p0

    return p0
.end method

.method public addSlamDetectListener(Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;)V
    .registers 2

    .line 4474
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->addSlamDetectListener(Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;)V

    return-void
.end method

.method public addSticker(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 4111
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->addSticker(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I
    .registers 3

    .line 6226
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I

    move-result p0

    return p0
.end method

.method public alignTo(IIII)I
    .registers 5

    .line 6640
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->alignTo(IIII)I

    move-result p0

    return p0
.end method

.method public animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    if-nez p2, :cond_c

    .line 5506
    const-string p0, "VERecorder"

    const-string p1, "Illegal argument. imagePath can\'t be null. Consider using empty string to cancel."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 5509
    :cond_c
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 5520
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->animateImagesToPreview(Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public appendComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 5308
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->appendComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public appendComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 6

    .line 5410
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 5411
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_APPEND_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 5412
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 5413
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 5414
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5415
    const-string p1, "appendComposerNodes..."

    const-string p3, "VERecorder"

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5416
    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, p2, :cond_40

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5417
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, p2, :cond_39

    goto :goto_40

    .line 5423
    :cond_39
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorderBase;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0

    .line 5418
    :cond_40
    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Nodes size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tags size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5419
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but nodeNum="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5418
    invoke-static {p3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public attachCameraCapture(Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 2

    .line 574
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->attachCameraCapture(Lcom/ss/android/vesdk/camera/ICameraCapture;)V

    return-void
.end method

.method public attachCameraSettings(Lcom/ss/android/vesdk/VECameraSettings;)V
    .registers 2

    .line 524
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->attachCameraSettings(Lcom/ss/android/vesdk/VECameraSettings;)V

    return-void
.end method

.method public capture(IIIZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 9

    move-object v0, p7

    .line 1894
    new-instance p7, Lcom/ss/android/vesdk/VERecorder$9;

    invoke-direct {p7, p0, v0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$9;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;II)V

    .line 1936
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/vesdk/TERecorderBase;->capture(IIIZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V

    return-void
.end method

.method public capture(IZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 6

    .line 1954
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->capture(IZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V

    return-void
.end method

.method public capture(Lcom/ss/android/vesdk/VECaptureRequest;)V
    .registers 13

    .line 1964
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    .line 1965
    const-string v3, "ve_enable_camera_capture_stream"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1964
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1967
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecorder;->getCurrentCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_47

    .line 1969
    invoke-interface {v3}, Lcom/ss/android/vesdk/camera/ICameraCapture;->getFlashMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    move-result-object v6

    .line 1970
    sget-object v7, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_OFF:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    if-eq v6, v7, :cond_24

    sget-object v7, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_TORCH:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    if-eq v6, v7, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v4

    .line 1975
    :goto_25
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getNightEnhanceConfig()Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    move-result-object v7

    if-eqz v7, :cond_2c

    move v6, v5

    .line 1980
    :cond_2c
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v7

    const-string v8, "ve_enable_yuv_buffer_capture"

    .line 1981
    invoke-virtual {v7, v8, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1980
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3d

    move v6, v5

    .line 1986
    :cond_3d
    iget-object v7, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v7}, Lcom/ss/android/vesdk/TERecorderBase;->getPictureTakenProxyListener()Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;

    move-result-object v7

    if-eqz v7, :cond_48

    move v6, v5

    goto :goto_48

    :cond_47
    move v6, v4

    :cond_48
    :goto_48
    if-nez v2, :cond_53

    .line 1991
    iget-object v7, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v7}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewRenderRect()[I

    move-result-object v7

    if-nez v7, :cond_53

    move v6, v5

    .line 1995
    :cond_53
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getFrameSource()I

    move-result v7

    if-nez v7, :cond_5d

    if-nez v2, :cond_5d

    if-nez v6, :cond_63

    .line 1996
    :cond_5d
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isForceUseFramePreviewSource()Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1998
    :cond_63
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getImageWidth()I

    move-result v2

    .line 1999
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getImageHeight()I

    move-result v6

    .line 2000
    const-string v7, "VERecorder"

    const/4 v8, 0x2

    if-lez v2, :cond_72

    if-gtz v6, :cond_bb

    .line 2001
    :cond_72
    iget-object v9, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v9}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewRenderRect()[I

    move-result-object v9

    if-eqz v3, :cond_7f

    .line 2004
    invoke-interface {v3}, Lcom/ss/android/vesdk/camera/ICameraCapture;->getPictureSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    goto :goto_80

    :cond_7f
    const/4 v3, 0x0

    :goto_80
    if-eqz v9, :cond_bb

    .line 2008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previewRenderRect: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    aget v2, v9, v8

    const/4 v6, 0x3

    .line 2010
    aget v6, v9, v6

    if-eqz v3, :cond_bb

    .line 2011
    iget v9, v3, Lcom/ss/android/vesdk/VESize;->width:I

    if-le v9, v2, :cond_bb

    .line 2014
    iget v3, v3, Lcom/ss/android/vesdk/VESize;->height:I

    if-ge v3, v2, :cond_ab

    move v3, v2

    goto :goto_b1

    .line 2018
    :cond_ab
    div-int/lit8 v9, v3, 0x2

    if-le v9, v2, :cond_b1

    mul-int/lit8 v3, v2, 0x2

    :cond_b1
    :goto_b1
    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, v3

    mul-float/2addr v10, v9

    int-to-float v6, v6

    mul-float/2addr v10, v6

    int-to-float v2, v2

    div-float/2addr v10, v2

    float-to-int v6, v10

    move v2, v3

    .line 2028
    :cond_bb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disable camera capture stream...w: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", h: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_106

    if-gtz v6, :cond_dc

    goto :goto_106

    .line 2038
    :cond_dc
    iget v3, p0, Lcom/ss/android/vesdk/VERecorder;->mFaceBeautifyDetectIndex:I

    if-ne v3, v4, :cond_e6

    .line 2039
    invoke-virtual {p0, v8}, Lcom/ss/android/vesdk/VERecorder;->enableFaceBeautifyDetect(I)V

    const/4 v3, -0x1

    .line 2040
    iput v3, p0, Lcom/ss/android/vesdk/VERecorder;->mFaceBeautifyDetectIndex:I

    .line 2042
    :cond_e6
    invoke-virtual {p1, v4}, Lcom/ss/android/vesdk/VECaptureRequest;->setFrameSource(I)V

    .line 2045
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isNeedEffectRender()Z

    move-result v3

    new-instance v4, Lcom/ss/android/vesdk/VERecorder$10;

    invoke-direct {v4, p0, p1, v2, v6}, Lcom/ss/android/vesdk/VERecorder$10;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VECaptureRequest;II)V

    .line 2061
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isNeedOriginPic()Z

    move-result v5

    move v1, v2

    move v2, v6

    .line 2062
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getVeFrameShotScreenCallback()Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    move-result-object v6

    const/4 v7, 0x0

    .line 2064
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isEnableUpscaleShot()Z

    move-result v8

    move-object v0, p0

    .line 2045
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/vesdk/VERecorder;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;ZZ)V

    return-void

    .line 2030
    :cond_106
    :goto_106
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getBitmapCaptureCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_1a1

    const/16 v1, -0x3e8

    .line 2032
    invoke-interface {v0, v5, v1}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    return-void

    .line 2069
    :cond_112
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getFrameSource()I

    move-result v1

    if-nez v1, :cond_153

    .line 2070
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getNightEnhanceConfig()Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    move-result-object v1

    if-eqz v1, :cond_12c

    .line 2071
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getNightEnhanceConfig()Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getBitmapCaptureCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/TERecorderBase;->captureNightEnhance(Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V

    return-void

    .line 2073
    :cond_12c
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getBitmapCaptureCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    move-result-object v1

    .line 2074
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isEnableShotScreenAfterCaptureFailed()Z

    move-result v2

    .line 2075
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getImageDegree()I

    move-result v3

    .line 2076
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isNeedPreviewAfterCapture()Z

    move-result v4

    move v5, v3

    .line 2077
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isPreventRenderAfterRender()Z

    move-result v3

    move v6, v4

    .line 2078
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getLightSoftCallback()Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;

    move-result-object v4

    move v7, v5

    new-instance v5, Lcom/ss/android/vesdk/VERecorder$11;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/ss/android/vesdk/VERecorder$11;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;ZLcom/ss/android/vesdk/VECaptureRequest;)V

    move-object v0, p0

    move v2, v6

    move v1, v7

    .line 2075
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VERecorder;->capture(IZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V

    return-void

    .line 2121
    :cond_153
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getFrameSource()I

    move-result v1

    if-ne v1, v4, :cond_1a1

    .line 2122
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getPictureTakenProxyListener()Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;

    move-result-object v1

    if-eqz v1, :cond_180

    .line 2125
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getImageWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getImageHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;->proxy(II)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object v1

    .line 2126
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getBitmapShotScreenCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    move-result-object v2

    .line 2127
    iget-object v1, v1, Lcom/ss/android/medialib/camera/ImageFrame;->bitmap:Landroid/graphics/Bitmap;

    new-instance v5, Lcom/ss/android/vesdk/VERecorder$12;

    invoke-direct {v5, p0, v2}, Lcom/ss/android/vesdk/VERecorder$12;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VERecorder;->renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    return-void

    .line 2144
    :cond_180
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getImageWidth()I

    move-result v1

    .line 2145
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getImageHeight()I

    move-result v2

    .line 2146
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isNeedEffectRender()Z

    move-result v3

    .line 2147
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getBitmapShotScreenCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    move-result-object v4

    .line 2148
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isNeedOriginPic()Z

    move-result v5

    .line 2149
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->getVeFrameShotScreenCallback()Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    move-result-object v6

    const/4 v7, 0x0

    .line 2151
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECaptureRequest;->isEnableUpscaleShot()Z

    move-result v8

    move-object v0, p0

    .line 2143
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/vesdk/VERecorder;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;ZZ)V

    :cond_1a1
    return-void
.end method

.method public changeCamera()V
    .registers 1

    .line 2558
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->changeCamera()V

    return-void
.end method

.method public changeCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)V
    .registers 2
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = -0x1df3658d
    .end annotation

    .line 2569
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)V

    return-void
.end method

.method public changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3943
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z
    .registers 2

    .line 6089
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z

    move-result p0

    return p0
.end method

.method public changeRecordMode(Lcom/ss/android/vesdk/VERecordMode;)V
    .registers 2

    .line 3933
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeRecordMode(Lcom/ss/android/vesdk/VERecordMode;)V

    return-void
.end method

.method public changeRenderSize(Lcom/ss/android/vesdk/VESize;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6100
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeRenderSize(Lcom/ss/android/vesdk/VESize;)I

    move-result p0

    return p0
.end method

.method public changeSurface(Landroid/view/Surface;)V
    .registers 2

    .line 2491
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeSurface(Landroid/view/Surface;)I

    return-void
.end method

.method public changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 2

    .line 3228
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    return-void
.end method

.method public changeVideoOutputSize(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3220
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->changeVideoOutputSize(II)V

    return-void
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 3

    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    .line 5480
    :cond_5
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 5478
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    if-nez p3, :cond_7

    goto :goto_e

    .line 5495
    :cond_7
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 5493
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public chooseAreaFromRatio34(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    goto :goto_11

    .line 3249
    :cond_c
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->chooseAreaFromRatio34(F)V

    :cond_11
    :goto_11
    return-void
.end method

.method public chooseSlamFace(I)V
    .registers 2

    .line 4726
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->chooseSlamFace(I)V

    return-void
.end method

.method public clearAllFrags()V
    .registers 1

    .line 1217
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->clearAllFrags()V

    return-void
.end method

.method public clearDisplay(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public clearDisplayColor(IIII)V
    .registers 5

    .line 6118
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->clearDisplayColor(IIII)V

    return-void
.end method

.method public clearLandMarkDetectListener()V
    .registers 1

    .line 4757
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->clearLandMarkDetectListener()V

    return-void
.end method

.method public clearSticker()V
    .registers 1

    .line 4120
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->clearSticker()V

    return-void
.end method

.method public closeFollowingShotWindow()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public concat()[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1241
    const-string v1, ""

    invoke-virtual {p0, v0, v1, v1}, Lcom/ss/android/vesdk/VERecorder;->concat(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public concat(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, -0x1

    .line 1255
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VERecorder;->concat(ILjava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public concat(ILjava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 13

    .line 1273
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->genConcatSegmentVideoPath()V

    .line 1274
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->genConcatSegmentAudioPath()V

    .line 1275
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getConcatSegmentVideoPath()Ljava/lang/String;

    move-result-object v2

    .line 1276
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getConcatSegmentAudioPath()Ljava/lang/String;

    move-result-object v0

    .line 1278
    invoke-static {v2}, Lcom/ss/android/vesdk/VEFileUtils;->deleteFile(Ljava/lang/String;)V

    .line 1279
    invoke-static {v0}, Lcom/ss/android/vesdk/VEFileUtils;->deleteFile(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecorder;->getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;

    move-result-object v1

    sget-object v3, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v1, v3, :cond_2f

    .line 1282
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorderBase;->getDuetAudioPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    move-object v0, v1

    :cond_2d
    :goto_2d
    move-object v3, v0

    goto :goto_33

    .line 1286
    :cond_2f
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecorder;->getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;

    goto :goto_2d

    .line 1290
    :goto_33
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/vesdk/TERecorderBase;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_44

    .line 1294
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1292
    :cond_44
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "concat failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public concatAsync(ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEConcatListener;)V
    .registers 11

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1316
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VERecorder;->concatAsync(ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEConcatListener;I)V

    return-void
.end method

.method public concatAsync(ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEConcatListener;I)V
    .registers 15

    .line 1331
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->genConcatSegmentVideoPath()V

    .line 1332
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->genConcatSegmentAudioPath()V
    :try_end_a
    .catch Lcom/ss/android/vesdk/VEException; {:try_start_0 .. :try_end_a} :catch_65

    .line 1340
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getConcatSegmentVideoPath()Ljava/lang/String;

    move-result-object v2

    .line 1341
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getConcatSegmentAudioPath()Ljava/lang/String;

    move-result-object v3

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1345
    invoke-static {v4}, Lcom/ss/android/vesdk/VEFileUtils;->deleteFile(Ljava/lang/String;)V

    .line 1346
    invoke-static {v6}, Lcom/ss/android/vesdk/VEFileUtils;->deleteFile(Ljava/lang/String;)V

    .line 1348
    invoke-static {v2, v4}, Lcom/ss/android/vesdk/VEFileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1349
    invoke-static {v3, v6}, Lcom/ss/android/vesdk/VEFileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1351
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecorder;->getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_4b

    goto :goto_4e

    .line 1353
    :cond_4b
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecorder;->getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;

    .line 1357
    :goto_4e
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    new-instance v1, Lcom/ss/android/vesdk/VERecorder$4;

    move-object v7, p4

    move-object v5, v3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/vesdk/VERecorder$4;-><init>(Lcom/ss/android/vesdk/VERecorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEConcatListener;)V

    move v4, p1

    move-object v6, p3

    move v8, p5

    move-object v7, v1

    move-object v2, v3

    move-object v3, v5

    move-object v5, p2

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/vesdk/TERecorderBase;->concatAsync(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VECallListener;I)V

    return-void

    :catch_65
    move-exception v0

    move-object v7, p4

    move-object p0, v0

    .line 1334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No need to concat because: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEException;->getMsgDes()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VERecorder"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_8b

    const/16 p0, -0x6c

    .line 1336
    const-string p1, ""

    invoke-interface {v7, p0, p1, p1}, Lcom/ss/android/vesdk/VEListener$VEConcatListener;->onDone(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8b
    return-void
.end method

.method public concatAsync(Lcom/ss/android/vesdk/VEListener$VEConcatListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 1304
    const-string v1, ""

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/ss/android/vesdk/VERecorder;->concatAsync(ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEConcatListener;)V

    return-void
.end method

.method public configStyleResourceFinder(Landroid/content/res/AssetManager;)V
    .registers 2

    .line 6783
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->configStyleResourceFinder(Landroid/content/res/AssetManager;)V

    return-void
.end method

.method public deleteFrag(I)I
    .registers 2

    .line 1227
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->deleteFrag(I)I

    move-result p0

    return p0
.end method

.method public deleteLastFrag()V
    .registers 1

    .line 1194
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->deleteLastFrag()V

    return-void
.end method

.method public deleteLastFrag(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 1205
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->deleteLastFrag(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public detachCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 1

    .line 584
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->detachCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    return-object p0
.end method

.method public disableRender(Z)V
    .registers 2

    .line 3196
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->disableRender(Z)V

    return-void
.end method

.method public downExposureCompensation()V
    .registers 1

    .line 2696
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->downExposureCompensation()V

    return-void
.end method

.method public enableAudio(Z)V
    .registers 2

    .line 902
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableAudio(Z)V

    return-void
.end method

.method public enableAudioPlayerFromVE(Z)V
    .registers 2

    .line 6897
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableAudioPlayerFromVE(Z)V

    return-void
.end method

.method public enableAudioRecorder(Z)V
    .registers 4

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAudioRecorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1382
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder;->enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V
    .registers 3

    .line 1391
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public enableDuetMicRecord(Z)V
    .registers 2

    .line 669
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableDuetMicRecord(Z)V

    return-void
.end method

.method public enableEffect(Z)V
    .registers 2

    .line 3185
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableEffect(Z)V

    return-void
.end method

.method public enableEffectAmazing(Z)V
    .registers 2

    .line 554
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableEffectAmazing(Z)V

    return-void
.end method

.method public enableFaceBeautifyDetect(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam$BeautifyPlace;
        .end annotation
    .end param

    .line 4337
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableFaceBeautifyDetect(I)V

    .line 4338
    iput p1, p0, Lcom/ss/android/vesdk/VERecorder;->mFaceBeautifyDetectIndex:I

    return-void
.end method

.method public enableFaceExtInfo(I)V
    .registers 2

    .line 3991
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableFaceExtInfo(I)V

    return-void
.end method

.method public enableFirstFrameBypassEffectFrame(Z)V
    .registers 2

    .line 7069
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableFirstFrameBypassEffectFrame(Z)V

    return-void
.end method

.method public enableGetPropTrack(Z)V
    .registers 2

    .line 6582
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableGetPropTrack(Z)V

    return-void
.end method

.method public enableLensProcess(IZ)V
    .registers 6

    if-eqz p2, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    .line 6760
    :goto_7
    const-string v2, "te_lens_adaptive_sharpen"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    .line 6761
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->enableLensProcess(IZ)V

    return-void
.end method

.method public enableNewAudioCapture(Z)V
    .registers 2

    .line 4099
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableNewAudioCapture(Z)V

    return-void
.end method

.method public enablePBO(Z)V
    .registers 2

    .line 3208
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enablePBO(Z)V

    return-void
.end method

.method public enablePictureTestMode(Z)V
    .registers 3

    .line 5602
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TERecorderBase;->enablePictureTestMode(ZZ)V

    return-void
.end method

.method public enablePictureTestMode(ZZ)V
    .registers 3

    .line 5613
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->enablePictureTestMode(ZZ)V

    return-void
.end method

.method public enableRecordBGMToMp4(Z)V
    .registers 2

    .line 6001
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableRecordBGMToMp4(Z)V

    return-void
.end method

.method public enableRecordFlip(Z)V
    .registers 2

    .line 6886
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableRecordFlip(Z)V

    return-void
.end method

.method public enableRecordingMp4(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRecordingMp4... enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableRecordingMp4(Z)V

    return-void
.end method

.method public enableScan(ZJ)V
    .registers 4

    .line 5767
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->enableScan(ZJ)V

    return-void
.end method

.method public enableSceneRecognition(Z)V
    .registers 4

    .line 2934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSceneRecognition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableSceneRecognition(Z)V

    return-void
.end method

.method public enableSkeletonDetect(Z)V
    .registers 2

    .line 4283
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableSkeletonDetect(Z)V

    return-void
.end method

.method public enableSmartBeauty(Z)V
    .registers 2

    .line 4326
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableSmartBeauty(Z)V

    return-void
.end method

.method public enableStickerRecognition(Z)V
    .registers 4

    .line 2944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableExpressDetect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableStickerRecognition(Z)V

    return-void
.end method

.method public enableTimestampCallback(Z)V
    .registers 2

    .line 6190
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableTimestampCallback(Z)V

    return-void
.end method

.method public enableVolumeDetect(Z)V
    .registers 2

    .line 686
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableVolumeDetect(Z)V

    return-void
.end method

.method public enableWaterMark(Z)V
    .registers 2

    .line 5592
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableWaterMark(Z)V

    return-void
.end method

.method public fetchDistortionInfo(Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;)Z
    .registers 2

    .line 6848
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->fetchDistortionInfo(Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;)Z

    move-result p0

    return p0
.end method

.method public getAECDelayTimeInMS()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAECSuggestVolume()[F
    .registers 1

    .line 5903
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getAECSuggestVolume()[F

    move-result-object p0

    return-object p0
.end method

.method public getAudioCapture()Lcom/ss/android/vesdk/VEAudioCapture;
    .registers 1

    .line 5783
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getAudioCapture()Lcom/ss/android/vesdk/VEAudioCapture;

    move-result-object p0

    return-object p0
.end method

.method public getAudioConsumer()Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;
    .registers 1

    .line 6916
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getAudioConsumer()Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    move-result-object p0

    return-object p0
.end method

.method public getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;
    .registers 1

    .line 2668
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .registers 1

    .line 2579
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object p0

    return-object p0
.end method

.method public getCameraFps()F
    .registers 1

    .line 3760
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getCameraFps()F

    move-result p0

    return p0
.end method

.method public getComposerNodePaths()Ljava/lang/String;
    .registers 1

    .line 5466
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getComposerNodePaths()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3

    .line 5457
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;
    .registers 1

    .line 3953
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getCurRecordMode()Lcom/ss/android/vesdk/VERecordMode;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getCurrentCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    return-object p0
.end method

.method public getEffect()Lcom/ss/android/vesdk/effect/IEffect;
    .registers 1

    .line 6180
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object p0

    return-object p0
.end method

.method public getEffectHandler()J
    .registers 3

    .line 3632
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getEffectHandler()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndFrameTime()J
    .registers 3

    .line 1154
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getEndFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .registers 1

    .line 5775
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;

    move-result-object p0

    return-object p0
.end method

.method public getFilterIntensity(Ljava/lang/String;)F
    .registers 3

    .line 2921
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 2924
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->getFilterIntensity(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getFrameByConfig(Lcom/ss/android/vesdk/VERecorder$FrameConfig;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 2

    .line 2743
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->getFrameByConfig(Lcom/ss/android/vesdk/VERecorder$FrameConfig;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0
.end method

.method public getIntermediatePathFromEffect()Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;
    .registers 3

    .line 3639
    const-string v0, "VERecorder"

    const-string v1, "get intermediate path from effect"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3640
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getMapBuffer()Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInternalRecorder()Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getInternalRecorder()Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    return-object p0
.end method

.method public getLastPerformanceData()Lcom/ss/android/vesdk/model/VERecordPerformanceData;
    .registers 1

    .line 7024
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getLastPerformanceData()Lcom/ss/android/vesdk/model/VERecordPerformanceData;

    move-result-object p0

    return-object p0
.end method

.method public getLastRecordFrameNum()I
    .registers 1

    .line 1166
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getLastRecordFrameNum()I

    move-result p0

    return p0
.end method

.method public getMaxZoom()F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3874
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getMaxZoom()F

    move-result p0

    return p0
.end method

.method public getMicState()I
    .registers 1

    .line 3774
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 3777
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getMicState()I

    move-result p0

    return p0
.end method

.method public getPrePlayTimeStamp()J
    .registers 3

    .line 6322
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getPrePlayTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewDropFps()F
    .registers 1

    .line 5880
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewDropFps()F

    move-result p0

    return p0
.end method

.method public getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
    .registers 9

    .line 6017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6018
    new-instance v6, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    invoke-direct {v6, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;-><init>(Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    .line 6019
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 6021
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$18;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/VERecorder$18;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;JLcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)V

    .line 6066
    invoke-virtual {v6, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;

    goto :goto_1c

    :cond_1a
    move-object v1, p0

    move-object v2, p1

    .line 6068
    :goto_1c
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetOriginFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 6069
    iget-object p0, v1, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewFrameWithOrigin(Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    move-result p0

    return p0

    .line 6071
    :cond_29
    iget-object p0, v1, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I

    move-result p0

    return p0
.end method

.method public getPreviewLagCount()I
    .registers 1

    .line 5845
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewLagCount()I

    move-result p0

    return p0
.end method

.method public getPreviewLagMaxDuration()I
    .registers 1

    .line 5849
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewLagMaxDuration()I

    move-result p0

    return p0
.end method

.method public getPreviewLagTotalDuration()I
    .registers 1

    .line 5853
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewLagTotalDuration()I

    move-result p0

    return p0
.end method

.method public getPreviewRenderFps()F
    .registers 1

    .line 5857
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewRenderFps()F

    move-result p0

    return p0
.end method

.method public getPreviewRenderRect()[I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6770
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getPreviewRenderRect()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactRegionInRecordVideoPixel()[I
    .registers 1

    .line 758
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getReactRegionInRecordVideoPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactRegionInViewPixel()[I
    .registers 1

    .line 748
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getReactRegionInViewPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionPosMarginInViewPixel()[I
    .registers 1

    .line 738
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getReactionPosMarginInViewPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionWindowRotation()F
    .registers 1

    .line 801
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getReactionWindowRotation()F

    move-result p0

    return p0
.end method

.method public getRecordCount()I
    .registers 1

    .line 5837
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordCount()I

    move-result p0

    return p0
.end method

.method public getRecordLagCount()I
    .registers 1

    .line 5820
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordLagCount()I

    move-result p0

    return p0
.end method

.method public getRecordLagMaxDuration()I
    .registers 1

    .line 5824
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordLagMaxDuration()I

    move-result p0

    return p0
.end method

.method public getRecordLagTotalDuration()I
    .registers 1

    .line 5828
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordLagTotalDuration()I

    move-result p0

    return p0
.end method

.method public getRecordPreviewFpsEnd()D
    .registers 3

    .line 5865
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordPreviewFpsEnd()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordPreviewFpsStart()D
    .registers 3

    .line 5861
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordPreviewFpsStart()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordRenderDropFps()F
    .registers 1

    .line 5886
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordRenderDropFps()F

    move-result p0

    return p0
.end method

.method public getRecordRenderFps()F
    .registers 1

    .line 5832
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordRenderFps()F

    move-result p0

    return p0
.end method

.method public getRecordStatus()I
    .registers 1

    .line 874
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordStatus()I

    move-result p0

    return p0
.end method

.method public getRecordWriteFps()F
    .registers 1

    .line 5841
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordWriteFps()F

    move-result p0

    return p0
.end method

.method public getRecordedVideoPaths()[Ljava/lang/String;
    .registers 1

    .line 965
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecordedVideoPaths()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecorderModelControl()Lcom/ss/android/vesdk/IVERecorderModelControl;
    .registers 1

    .line 7085
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecorderModelControl()Lcom/ss/android/vesdk/IVERecorderModelControl;

    move-result-object p0

    return-object p0
.end method

.method public getRecorderPrePlayControl()Lcom/ss/android/vesdk/IVERecorderPrePlayControl;
    .registers 1

    .line 7098
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRecorderPrePlayControl()Lcom/ss/android/vesdk/IVERecorderPrePlayControl;

    move-result-object p0

    return-object p0
.end method

.method public getRenderEffectTime()D
    .registers 3

    .line 5873
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderEffectTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRenderFrameTime()D
    .registers 3

    .line 5869
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderFrameTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRenderView()Lcom/ss/android/vesdk/render/VERenderView;
    .registers 1

    .line 595
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object p0

    return-object p0
.end method

.method public getResManager()Lcom/ss/android/vesdk/runtime/VERecorderResManager;
    .registers 1

    .line 599
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    return-object p0
.end method

.method public getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 4864
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSegmentAudioLength()J
    .registers 3

    .line 1162
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getSegmentAudioUS()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentAudioPlayBackTimestamp()J
    .registers 3

    .line 1184
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getSegmentAudioPlayBackTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentFrameTimeUS()J
    .registers 3

    .line 1176
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getSegmentFrameTimeUS()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSlamFaceCount()I
    .registers 1

    .line 4716
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getSlamFaceCount()I

    move-result p0

    return p0
.end method

.method public getSmallWindowSnapshot(IILcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;)Z
    .registers 4

    if-lez p1, :cond_b

    if-lez p2, :cond_b

    .line 6874
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->getSmallWindowSnapshot(IILcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;)Z

    move-result p0

    return p0

    .line 6872
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid width or height..."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStyleAudioProxy()Ljava/lang/Object;
    .registers 1

    .line 6800
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getStyleAudioProxy()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getStyleProxy()Ljava/lang/Object;
    .registers 1

    .line 6792
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getStyleProxy()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSuggestionSettingsForKaraoke()Lcom/ss/android/vesdk/VEAudioCaptureSettings;
    .registers 1

    .line 5962
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getSuggestionSettingsForKaraoke()Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    move-result-object p0

    return-object p0
.end method

.method protected getTERecorder(Landroid/content/Context;Lcom/ss/android/vesdk/render/VERenderView;)Lcom/ss/android/vesdk/TERecorderBase;
    .registers 3

    .line 5535
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-static {p1, p0, p2}, Lcom/ss/android/vesdk/TERecordFactory;->create(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)Lcom/ss/android/vesdk/TERecorderBase;

    move-result-object p0

    return-object p0
.end method

.method public getVideoController()Lcom/ss/android/medialib/presenter/ITEVideoController;
    .registers 1

    .line 5981
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getVideoController()Lcom/ss/android/medialib/presenter/ITEVideoController;

    move-result-object p0

    return-object p0
.end method

.method public getVideoEncodeSettings()Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    .registers 1

    .line 533
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getVideoEncodeSettings()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p0

    return-object p0
.end method

.method public handleEffectAudio(ZJ)V
    .registers 4

    .line 4783
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->handleEffectAudio(ZJ)V

    return-void
.end method

.method public handleEffectAudioPlay(Z)V
    .registers 2

    .line 5130
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->handleEffectAudioPlay(Z)V

    return-void
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;II)I
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    iget-object p4, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getSegmentDirPath()Ljava/lang/String;

    move-result-object v4

    .line 405
    :try_start_6
    iget-object p4, p0, Lcom/ss/android/vesdk/VERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/runtime/VERuntime;->getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;

    move-result-object p4

    invoke-virtual {p4}, Lcom/ss/android/vesdk/runtime/VEEnv;->getDetectModelsDir()Ljava/lang/String;

    move-result-object v5

    .line 406
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/TERecorderBase;->init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception v0

    move-object p0, v0

    .line 408
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init failed: VESDK need to be init: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-direct {p1, p2, p0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;)I
    .registers 13

    .line 426
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getSegmentDirPath()Ljava/lang/String;

    move-result-object v6

    .line 428
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getDetectModelsDir()Ljava/lang/String;

    move-result-object v7

    .line 429
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/vesdk/TERecorderBase;->init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception v0

    move-object p0, v0

    .line 431
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init failed: VESDK need to be init: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-direct {p1, p2, p0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Z)I
    .registers 15

    .line 492
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getSegmentDirPath()Ljava/lang/String;

    move-result-object v6

    .line 494
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getDetectModelsDir()Ljava/lang/String;

    move-result-object v7

    .line 495
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/vesdk/TERecorderBase;->init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception v0

    move-object p0, v0

    .line 497
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init failed: VESDK need to be init: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-direct {p1, p2, p0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 448
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VERecorder;->init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Z)I

    move-result p0

    return p0
.end method

.method public init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Z)I
    .registers 15

    .line 465
    const-string v0, "VERecorder-init"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getSegmentDirPath()Ljava/lang/String;

    move-result-object v6

    .line 467
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getDetectModelsDir()Ljava/lang/String;

    move-result-object v7

    .line 469
    :try_start_15
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/vesdk/TERecorderBase;->init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_20} :catch_24
    .catchall {:try_start_15 .. :try_end_20} :catchall_42

    .line 473
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return p0

    :catch_24
    move-exception v0

    move-object p0, v0

    .line 471
    :try_start_26
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init failed: VESDK need to be init: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-direct {p1, p2, p0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    move-object p0, v0

    .line 473
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    .line 474
    throw p0
.end method

.method public initDebugSettings(Lcom/ss/android/vesdk/VEDebugSettings;)V
    .registers 4

    .line 6974
    const-string v0, "VERecorder"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDebugSettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6975
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDebugSettings;->init()V

    .line 6976
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDebugSettings(Lcom/ss/android/vesdk/VEDebugSettings;)V

    return-void
.end method

.method public initDuet(Lcom/ss/android/vesdk/VEDuetSettings;)V
    .registers 3
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x7445cf11
    .end annotation

    .line 636
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->initDuet(Lcom/ss/android/vesdk/VEDuetSettings;)V

    .line 638
    :try_start_5
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEDuetSettings;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 639
    const-string p1, "vesdk_event_recorder_init_duet"

    const-string v0, "behavior"

    invoke-static {p1, p0, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public initFaceBeautifyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;)V
    .registers 2

    .line 5670
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->initFaceBeautifyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;)V

    return-void
.end method

.method public initFaceBeautyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;)V
    .registers 2

    .line 5661
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->initFaceBeautyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;)V

    return-void
.end method

.method public initFaceDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)V
    .registers 2

    .line 5634
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->initFaceDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)V

    return-void
.end method

.method public initFollowingShot(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public initFollowingShot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public initFollowingShotWindow(Ljava/lang/String;JJ)I
    .registers 6

    .line 6374
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->initFollowingShotWindow(Ljava/lang/String;JJ)I

    move-result p0

    return p0
.end method

.method public initHDRNetDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;)V
    .registers 2

    .line 5652
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->initHDRNetDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;)V

    return-void
.end method

.method public initHandDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;)V
    .registers 2

    .line 5643
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->initHandDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;)V

    return-void
.end method

.method public initReact(Lcom/ss/android/vesdk/VEReactSettings;)V
    .registers 2

    .line 704
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->initReact(Lcom/ss/android/vesdk/VEReactSettings;)V

    return-void
.end method

.method public isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
    .registers 2

    .line 5805
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z

    move-result p0

    return p0
.end method

.method public isSupportWideAngle(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Z
    .registers 2

    .line 2707
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->isSupportWideAngle(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Z

    move-result p0

    return p0
.end method

.method public isSupportedExposureCompensation()Z
    .registers 1

    .line 2654
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->isSupportedExposureCompensation()Z

    move-result p0

    return p0
.end method

.method public loadDraft(Lcom/ss/android/vesdk/VERecordDraft;)I
    .registers 2

    .line 7094
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->loadDraft(Lcom/ss/android/vesdk/VERecordDraft;)I

    move-result p0

    return p0
.end method

.method public notifyFollowShotSurfaceChanged(IIIZ)V
    .registers 5

    .line 6447
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->notifyFollowShotSurfaceChanged(IIIZ)V

    return-void
.end method

.method public notifySurfaceChanged(IIIZ)V
    .registers 5

    .line 6419
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->notifySurfaceChanged(IIIZ)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 3683
    const-string v0, "VERecorder"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3684
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    if-eqz v0, :cond_e

    .line 3685
    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorderBase;->onDestroy()V

    .line 3688
    :cond_e
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    if-eqz p0, :cond_15

    .line 3689
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->release()V

    :cond_15
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 3673
    const-string v0, "VERecorder"

    const-string v1, "onPause..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3674
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 3663
    const-string v0, "VERecorder"

    const-string v1, "onResume..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->onResume()V

    return-void
.end method

.method public openFollowingShotWindow()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public pauseEffectAudio(Z)V
    .registers 2

    .line 4767
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->pauseEffectAudio(Z)V

    return-void
.end method

.method public pauseMediaRecord()V
    .registers 1

    .line 6565
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->pauseMediaRecord()V

    return-void
.end method

.method public pausePlayTrack(II)I
    .registers 3

    .line 6615
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->pausePlayTrack(II)I

    move-result p0

    return p0
.end method

.method public pausePrePlay()I
    .registers 1

    .line 6294
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->pausePrePlay()I

    move-result p0

    return p0
.end method

.method public pauseRender()I
    .registers 1

    .line 6509
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->pauseRender()I

    move-result p0

    return p0
.end method

.method public pauseRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 6486
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->pauseRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public pauseSlamAudio(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4736
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->pauseEffectAudio(Z)V

    return-void
.end method

.method public posInReactionRegion(II)Z
    .registers 3

    .line 823
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->posInReactionRegion(II)Z

    move-result p0

    return p0
.end method

.method public preventTextureRender(Z)V
    .registers 2

    .line 2379
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->preventTextureRender(Z)V

    return-void
.end method

.method public previewDuetVideo()Z
    .registers 1

    .line 677
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->previewDuetVideo()Z

    move-result p0

    return p0
.end method

.method public processTouchEvent(FF)I
    .registers 3

    .line 4525
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->processTouchEvent(FF)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
    .registers 4

    .line 5793
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getEvent()Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    move-result-object v0

    if-eqz v0, :cond_10

    if-gez p2, :cond_9

    goto :goto_10

    .line 5796
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public queryShaderStep()F
    .registers 1

    .line 3891
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->queryShaderStep()F

    move-result p0

    return p0
.end method

.method public queryZoomAbility()I
    .registers 1

    .line 3883
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->queryZoomAbility()I

    move-result p0

    return p0
.end method

.method public recoverCherEffect(Lcom/ss/android/vesdk/VECherEffectParam;)V
    .registers 2

    .line 4207
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->recoverCherEffect(Lcom/ss/android/vesdk/VECherEffectParam;)V

    return-void
.end method

.method public regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
    .registers 2

    .line 4053
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V

    return-void
.end method

.method public regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 2

    .line 4001
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    return-void
.end method

.method public regHandDetectCallback([ILcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V
    .registers 3

    .line 4264
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->regHandDetectCallback([ILcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V

    return-void
.end method

.method public regSceneDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V
    .registers 2

    .line 4245
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regSceneDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V

    return-void
.end method

.method public regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 2

    .line 4307
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    return-void
.end method

.method public regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 2

    .line 4362
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    return-void
.end method

.method public registerCherEffectParamCallback(Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V
    .registers 2

    .line 4197
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->registerCherEffectParamCallback(Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V

    return-void
.end method

.method public releaseGPUResources()V
    .registers 1

    .line 6140
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->releaseGPUResources()V

    return-void
.end method

.method public releaseGPUResourcesAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 2460
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->releaseGPUResourcesAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public reloadComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 5246
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->reloadComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public reloadComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 6

    .line 5384
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 5385
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_RELOAD_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 5386
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 5387
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 5388
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5389
    const-string p1, "reloadComposerNodes..."

    const-string p3, "VERecorder"

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5390
    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, p2, :cond_40

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5391
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, p2, :cond_39

    goto :goto_40

    .line 5397
    :cond_39
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorderBase;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0

    .line 5392
    :cond_40
    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Nodes size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tags size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5393
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but nodeNum="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5392
    invoke-static {p3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public removeComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 5319
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->removeComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 2

    .line 4018
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    return-void
.end method

.method public removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 4750
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public removeSlamDetectListener(Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;)V
    .registers 2

    .line 4483
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->removeSlamDetectListener(Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;)V

    return-void
.end method

.method public removeTrack(II)I
    .registers 3

    .line 6247
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->removeTrack(II)I

    move-result p0

    return p0
.end method

.method public renderFrame(Landroid/graphics/Bitmap;II)V
    .registers 10

    .line 2251
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/TERecorderBase;->renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    return-void
.end method

.method public renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
    .registers 6

    .line 2266
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    return-void
.end method

.method public renderFrame(Lcom/ss/android/ttve/model/VEFrame;IILcom/ss/android/vesdk/VERecorder$VERotation;ZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
    .registers 7

    .line 2214
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/ss/android/vesdk/TERecorderBase;->renderFrame(Lcom/ss/android/ttve/model/VEFrame;IILcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    return-void
.end method

.method public renderFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/vesdk/VEGetFrameSettings;)V
    .registers 3

    .line 2227
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->renderFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    return-void
.end method

.method public renderFrame(Ljava/lang/String;)V
    .registers 2

    .line 2238
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->renderFrame(Ljava/lang/String;)V

    return-void
.end method

.method public replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 5

    .line 5332
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 8

    .line 5438
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 5439
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_REPLACE_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 5440
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 5441
    iput p4, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueTwo:I

    .line 5442
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 5443
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5444
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayThree:Ljava/util/ArrayList;

    .line 5445
    const-string p1, "VERecorder"

    const-string p2, "replaceComposerNodes..."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5446
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorderBase;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public resetResManager(Lcom/ss/android/vesdk/runtime/VERecorderResManager;)I
    .registers 3

    .line 509
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeResManager(Lcom/ss/android/vesdk/runtime/VERecorderResManager;)I

    move-result v0

    if-nez v0, :cond_a

    .line 511
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    :cond_a
    return v0
.end method

.method public resumeMediaRecord()V
    .registers 1

    .line 6572
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->resumeMediaRecord()V

    return-void
.end method

.method public rotateReactionWindow(F)F
    .registers 2

    .line 792
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->rotateReactionWindow(F)F

    move-result p0

    return p0
.end method

.method public runTask(Ljava/lang/Runnable;)V
    .registers 2

    .line 6276
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scaleReactionWindow(F)[I
    .registers 2

    .line 782
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->scaleReactionWindow(F)[I

    move-result-object p0

    return-object p0
.end method

.method public seekTrack(IIJ)I
    .registers 5

    .line 6625
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->seekTrack(IIJ)I

    move-result p0

    return p0
.end method

.method public sendEffectMsg(IJJLjava/lang/String;)V
    .registers 7

    .line 4406
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/vesdk/TERecorderBase;->sendEffectMsg(IJJLjava/lang/String;)V

    return-void
.end method

.method public setAlgorithmChangeMsgEnable(IZ)V
    .registers 3

    .line 5167
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setAlgorithmChangeMsgEnable(IZ)V

    return-void
.end method

.method public setAlgorithmPreConfig(II)I
    .registers 3

    .line 5297
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setAlgorithmPreConfig(II)I

    move-result p0

    return p0
.end method

.method public setAudioCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V
    .registers 2

    .line 7016
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setAudioCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V

    return-void
.end method

.method public setAudioDevice(Z)V
    .registers 2

    .line 7039
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setAudioDevice(Z)V

    return-void
.end method

.method public setAudioRecordStateCallback(Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;)V
    .registers 2

    .line 957
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setAudioRecordStateCallback(Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;)V

    return-void
.end method

.method public setAudioRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;)V
    .registers 2

    .line 380
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setAudioRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;)V

    return-void
.end method

.method public setAudioVolumeDetectCallback(Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;)V
    .registers 2

    .line 4072
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setAudioRecordVolumeDetectCallback(Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;)V

    return-void
.end method

.method public setBackground(IIII)V
    .registers 5

    .line 6107
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->setBackground(IIII)V

    return-void
.end method

.method public setBeautyFace(ILjava/lang/String;)I
    .registers 8

    .line 2962
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 2963
    const-string v1, "iesve_verecorder_set_beauty_algorithm"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v2

    .line 2964
    const-string v3, "old"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 2965
    invoke-static {v1, v4, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 2966
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setBeautyFace(ILjava/lang/String;)I

    move-result p0

    .line 2969
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2970
    const-string v1, "beautyFaceType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2971
    const-string p1, "strBeautyFaceRes"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2972
    const-string p1, "resultCode"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2973
    const-string p1, "vesdk_event_recorder_beauty_face"

    const-string p2, "behavior"

    invoke-static {p1, v0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_39} :catch_3a

    return p0

    :catch_3a
    move-exception p1

    .line 2975
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public setBeautyFaceIntensity(FF)I
    .registers 8

    .line 2989
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 2990
    const-string v1, "iesve_verecorder_set_beauty_level"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;F)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v2

    .line 2991
    const-string v3, "old"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 2992
    invoke-static {v1, v4, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 2994
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setBeautyFaceIntensity(FF)I

    move-result p0

    .line 2997
    :try_start_1a
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 2998
    const-string v0, "fSmoothIntensity"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2999
    const-string v0, "fBrightenIntensity"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3000
    const-string p1, "resultCode"

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3001
    const-string p1, "vesdk_event_recorder_beauty_face_intensity"

    const-string v0, "behavior"

    invoke-static {p1, p2, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_3d} :catch_3e

    return p0

    :catch_3e
    move-exception p1

    .line 3003
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public setBeautyIntensity(IF)I
    .registers 9

    .line 3142
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 3143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iesve_verecorder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEBeautyParam;->describle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_level"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;F)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    .line 3144
    const-string v4, "old"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 3145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEBeautyParam;->describle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 3146
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setBeautyIntensity(IF)I

    move-result p0

    return p0
.end method

.method public setBgmMute(Z)V
    .registers 2

    .line 6541
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setBgmMute(Z)V

    return-void
.end method

.method public setCameraClose(Z)V
    .registers 2

    .line 5745
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraClose(Z)V

    return-void
.end method

.method public setCameraFirstFrameOptimize(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3158
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraFirstFrameOptimize(Z)V

    return-void
.end method

.method public setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V
    .registers 2

    .line 367
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    return-void
.end method

.method public setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_8

    .line 328
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    new-instance v1, Lcom/ss/android/vesdk/VERecorder$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/VERecorder$1;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEListener$VECameraStateListener;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    return-void
.end method

.method public setCameraZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V
    .registers 2

    .line 3830
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V

    return-void
.end method

.method public setCaptureMirror(Lcom/ss/android/vesdk/VERecorder$VEMirrorMode;)V
    .registers 2

    .line 2319
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCaptureMirror(I)V

    return-void
.end method

.method public setCaptureMirror(Z)V
    .registers 2

    .line 2292
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCaptureMirror(Z)V

    return-void
.end method

.method public setCaptureResize(Z[I[I)V
    .registers 4

    .line 2332
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setCaptureResize(Z[I[I)V

    return-void
.end method

.method public setClientState(I)V
    .registers 2

    .line 5730
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setClientState(I)V

    return-void
.end method

.method public setCommonCallback(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 6217
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCommonCallback(Lcom/ss/android/vesdk/VECommonCallback;)V

    return-void
.end method

.method public setComposerMode(II)I
    .registers 3

    .line 5202
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setComposerMode(II)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 5235
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7

    .line 5345
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 5346
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_SET_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 5347
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 5348
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 5349
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5350
    const-string v1, "setComposerNodesWithTag..."

    const-string v2, "VERecorder"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5351
    iget-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, p2, :cond_7d

    iget-object v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5352
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, p2, :cond_39

    goto :goto_7d

    .line 5358
    :cond_39
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorderBase;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    .line 5361
    :try_start_3f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5362
    const-string v1, "path"

    const/4 v2, 0x0

    if-eqz p1, :cond_50

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    :catch_4e
    move-exception p1

    goto :goto_79

    :cond_50
    move-object p1, v2

    :goto_51
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5363
    const-string p1, "nodeTag"

    if-eqz p3, :cond_5c

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_5c
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5364
    const-string p1, "nodeValue"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5365
    const-string p1, "resultCode"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5366
    const-string p1, "vesdk_event_recorder_composer"

    const-string p2, "behavior"

    invoke-static {p1, v0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_78} :catch_4e

    return p0

    .line 5368
    :goto_79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    .line 5353
    :cond_7d
    :goto_7d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Nodes size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tags size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 5354
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but nodeNum="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5353
    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public setComposerResourcePath(Ljava/lang/String;)I
    .registers 2

    .line 5213
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setComposerResourcePath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
    .registers 2

    .line 4822
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V

    return-void
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 852
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 842
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDLEEnable(Z)V
    .registers 2

    .line 5174
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDLEEnable(Z)V

    return-void
.end method

.method public setDetectInterval(I)V
    .registers 2

    .line 4846
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDetectInterval(I)V

    return-void
.end method

.method public setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V
    .registers 3

    .line 4833
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    if-eqz p0, :cond_7

    .line 4834
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V

    :cond_7
    return-void
.end method

.method public setDeviceRotation(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    goto :goto_13

    :cond_b
    const/16 p1, 0x10e

    goto :goto_13

    :cond_e
    const/16 p1, 0xb4

    goto :goto_13

    :cond_11
    const/16 p1, 0x5a

    .line 2546
    :goto_13
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDeviceRotation(I)V

    return-void
.end method

.method public setDeviceRotation([F)V
    .registers 2

    .line 4426
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDeviceRotation([F)V

    return-void
.end method

.method public setDeviceRotation([FD)V
    .registers 4

    .line 4435
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setDeviceRotation([FD)V

    return-void
.end method

.method public setDisplayParamsListener(Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;)V
    .registers 2

    .line 7032
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDisplayParamsListener(Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;)V

    return-void
.end method

.method public setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I
    .registers 2

    .line 6080
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    move-result p0

    return p0
.end method

.method public setDropFrame(I)V
    .registers 2

    .line 2507
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDropFrame(I)V

    return-void
.end method

.method public setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V
    .registers 2

    .line 4442
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEffectAudioManagerCallback(Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;)Z
    .registers 2

    .line 6956
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setEffectAudioManagerCallback(Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;)Z

    move-result p0

    return p0
.end method

.method public setEffectBgmEnable(Z)V
    .registers 2

    .line 4393
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setEffectBgmEnable(Z)V

    return-void
.end method

.method public setEffectMaxMemoryCache(I)I
    .registers 4

    .line 5681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectMaxMemoryCache size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_1b

    const/16 p0, -0x64

    return p0

    .line 5685
    :cond_1b
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setEffectMaxMemoryCache(I)I

    move-result p0

    if-eqz p0, :cond_37

    .line 5687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEffectMaxMemoryCache failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return p0
.end method

.method public setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .registers 2

    .line 4417
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method public setEffectSlamEnable(Z)V
    .registers 2

    .line 4494
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setEffectSlamEnable(Z)V

    return-void
.end method

.method public setEnableAEC(Z)I
    .registers 3

    const/4 v0, 0x0

    .line 5923
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder;->setEnableAEC(ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setEnableAEC(ZLjava/lang/String;)I
    .registers 3

    .line 5939
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setEnableAEC(ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setEnableDuetV2(Z)V
    .registers 2

    .line 5893
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setEnableDuetV2(Z)V

    return-void
.end method

.method public setEnableEarBack(Z)I
    .registers 2

    .line 5972
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setEnableEarBack(Z)I

    move-result p0

    return p0
.end method

.method public setEnableLoudness(ZI)I
    .registers 3

    .line 5953
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setEnableLoudness(ZI)I

    move-result p0

    return p0
.end method

.method public setExposureCompensation(I)V
    .registers 2

    .line 2678
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setExposureCompensation(I)V

    return-void
.end method

.method public setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V
    .registers 6

    .line 3651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalFaceMakeupOpacity: path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", male "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", female "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3652
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V

    return-void
.end method

.method public setFaceMakeUp(Ljava/lang/String;)I
    .registers 4

    .line 3119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceMakeUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setFaceMakeUp(Ljava/lang/String;)I

    move-result p0

    .line 3123
    :try_start_1c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3124
    const-string v1, "strResPath"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3125
    const-string p1, "resultCode"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3126
    const-string p1, "vesdk_event_recorder_face_make_up"

    const-string v1, "behavior"

    invoke-static {p1, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_32} :catch_33

    return p0

    :catch_33
    move-exception p1

    .line 3128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public setFaceMakeUp(Ljava/lang/String;FF)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3093
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 3094
    const-string v1, "iesve_verecorder_set_lipstick_and_blusher_level"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;F)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v2

    .line 3095
    const-string v3, "old"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 3096
    invoke-static {v1, v4, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 3097
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setFaceMakeUp(Ljava/lang/String;FF)I

    move-result p0

    .line 3100
    :try_start_1a
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 3101
    const-string v0, "strResPath"

    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3102
    const-string p1, "fLipstickIntensity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3103
    const-string p1, "fBlusherIntensity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3104
    const-string p1, "resultCode"

    invoke-virtual {p3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3105
    const-string p1, "vesdk_event_recorder_face_make_up_intensity"

    const-string p2, "behavior"

    invoke-static {p1, p3, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_42} :catch_43

    return p0

    :catch_43
    move-exception p1

    .line 3107
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public setFaceReshape(Ljava/lang/String;FF)I
    .registers 8

    .line 3018
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 3019
    const-string v1, "iesve_verecorder_set_bigeyes_smallface_level"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;F)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    .line 3020
    const-string v2, "old"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 3021
    const-string v1, "iesve_verecorder_set_bigeyes_smallface"

    invoke-static {v1, v3, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 3022
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setFaceReshape(Ljava/lang/String;FF)I

    move-result p0

    .line 3025
    :try_start_1c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3026
    const-string v1, "strResPath"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3027
    const-string p1, "fEyeIntensity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3028
    const-string p1, "fCheekIntensity"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3029
    const-string p1, "resultCode"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3030
    const-string p1, "vesdk_event_recorder_face_reshape"

    const-string p2, "behavior"

    invoke-static {p1, v0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_44} :catch_45

    return p0

    :catch_45
    move-exception p1

    .line 3032
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public setFilter(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2796
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/vesdk/VERecorder;->setFilter(Ljava/lang/String;FZ)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;F)I
    .registers 4

    const/4 v0, 0x0

    .line 2808
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VERecorder;->setFilter(Ljava/lang/String;FZ)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 10

    .line 2858
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 2861
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ""

    if-nez v1, :cond_1c

    .line 2862
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2863
    array-length v4, v1

    if-lez v4, :cond_1c

    .line 2864
    array-length v4, v1

    sub-int/2addr v4, v2

    aget-object v1, v1, v4

    goto :goto_1d

    :cond_1c
    move-object v1, v3

    .line 2867
    :goto_1d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 2868
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2869
    array-length v5, v4

    if-lez v5, :cond_30

    .line 2870
    array-length v3, v4

    sub-int/2addr v3, v2

    aget-object v3, v4, v3

    .line 2873
    :cond_30
    const-string v4, "iesve_verecorder_set_filter_slide_left_id"

    invoke-virtual {v0, v4, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v4, "iesve_verecorder_set_filter_slide_right_id"

    .line 2874
    invoke-virtual {v1, v4, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v3, "old"

    .line 2875
    invoke-virtual {v1, v3, v2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 2876
    const-string v1, "iesve_verecorder_set_filter_slide"

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 2877
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setFilter(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public setFilterNew(Ljava/lang/String;F)I
    .registers 8

    .line 2758
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 2760
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    .line 2761
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2762
    array-length v3, v1

    if-lez v3, :cond_1a

    .line 2763
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    goto :goto_1c

    .line 2767
    :cond_1a
    const-string v1, ""

    :goto_1c
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    cmpg-float v3, p2, v4

    if-gez v3, :cond_2d

    const/high16 p2, -0x40800000    # -1.0f

    .line 2769
    :cond_2d
    const-string v3, "iesve_verecorder_set_filter_click_idfilter_id"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v3

    const-string v4, "old"

    .line 2770
    invoke-virtual {v3, v4, v2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 2771
    const-string v3, "iesve_verecorder_set_filter_click"

    invoke-static {v3, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 2772
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setFilterNew(Ljava/lang/String;F)I

    move-result p0

    .line 2775
    :try_start_43
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2776
    const-string v0, "filterId"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2777
    const-string v0, "intensity"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2778
    const-string p2, "tag"

    const-string v0, "setFilterNew"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2779
    const-string p2, "resultCode"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2781
    const-string p2, "vesdk_event_recorder_single_filter"

    const-string v0, "behavior"

    invoke-static {p2, p1, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_69} :catch_6a

    return p0

    :catch_6a
    move-exception p1

    .line 2783
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V
    .registers 17

    .line 2889
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 2892
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ""

    if-nez v1, :cond_1c

    .line 2893
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2894
    array-length v4, v1

    if-lez v4, :cond_1c

    .line 2895
    array-length v4, v1

    sub-int/2addr v4, v2

    aget-object v1, v1, v4

    goto :goto_1d

    :cond_1c
    move-object v1, v3

    .line 2898
    :goto_1d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 2899
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2900
    array-length v7, v4

    if-lez v7, :cond_30

    .line 2901
    array-length v3, v4

    sub-int/2addr v3, v2

    aget-object v3, v4, v3

    :cond_30
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v7, p4, v4

    if-lez v7, :cond_38

    move v7, v4

    goto :goto_39

    :cond_38
    move v7, p4

    :goto_39
    cmpl-float v8, p5, v4

    if-lez v8, :cond_3e

    goto :goto_40

    :cond_3e
    move/from16 v4, p5

    :goto_40
    const/4 v8, 0x0

    cmpg-float v9, v7, v8

    const/high16 v10, -0x40800000    # -1.0f

    if-gez v9, :cond_48

    move v7, v10

    :cond_48
    cmpg-float v8, v4, v8

    if-gez v8, :cond_4e

    move v9, v10

    goto :goto_4f

    :cond_4e
    move v9, v4

    .line 2908
    :goto_4f
    const-string v4, "iesve_verecorder_set_filter_slide_left_id"

    invoke-virtual {v0, v4, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v4, "iesve_verecorder_set_filter_slide_right_id"

    .line 2909
    invoke-virtual {v1, v4, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v3, "old"

    .line 2910
    invoke-virtual {v1, v3, v2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 2911
    const-string v1, "iesve_verecorder_set_filter_slide"

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 2912
    iget-object v4, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    move-object v5, p1

    move-object v6, p2

    move v8, v7

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/ss/android/vesdk/TERecorderBase;->setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V

    return-void
.end method

.method public setFocus(FF)V
    .registers 3

    .line 2590
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setFocus(FF)V

    return-void
.end method

.method public setFocus(FFII)V
    .registers 5

    .line 2620
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->setFocus(FFII)V

    return-void
.end method

.method public setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 2

    .line 2630
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V

    return-void
.end method

.method public setFocusWithFaceDetect()V
    .registers 1

    .line 2598
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->setFocusWithFaceDetect()V

    return-void
.end method

.method public setFocusWithFaceDetect(Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 2

    .line 2607
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setFocusWithFaceDetect(Lcom/ss/android/vesdk/VEFocusSettings;)V

    return-void
.end method

.method public setFollowShotDisplayDegree(I)V
    .registers 2

    .line 6427
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setFollowShotDisplayDegree(I)V

    return-void
.end method

.method public setFollowShotSurface(Landroid/view/Surface;)I
    .registers 2

    .line 6436
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->startFollowingShotPreview(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public setFollowingShotWindowLocation(IIII)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setFollowingShotWindowStatus(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setFollowingShotWindowsBackground(IIII)V
    .registers 7

    if-ltz p1, :cond_12

    const/16 v0, 0xff

    if-gt p1, v0, :cond_12

    if-ltz p2, :cond_12

    if-gt p2, v0, :cond_12

    if-ltz p3, :cond_12

    if-gt p3, v0, :cond_12

    if-ltz p4, :cond_12

    if-le p4, v0, :cond_19

    .line 6475
    :cond_12
    const-string v0, "VERecorder"

    const-string v1, "setFollowingShotWindowsBackground invalid param."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6477
    :cond_19
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->setFollowingShotWindowsBackground(IIII)V

    return-void
.end method

.method public setForceAlgorithmEnableCount(I)V
    .registers 2

    .line 6965
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setForceAlgorithmEnableCount(I)V

    return-void
.end method

.method public setForceAlgorithmExecuteCount(I)V
    .registers 2

    .line 5139
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setForceAlgorithmExecuteCount(I)V

    return-void
.end method

.method public setFrameEffectCallback(Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;)V
    .registers 2

    .line 7007
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setFrameEffectCallback(Lcom/ss/android/vesdk/VERecorder$VEFrameEffectCallback;)V

    return-void
.end method

.method public setHandDetectLowpowerEnable(Z)V
    .registers 2

    .line 5157
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setHandDetectLowpowerEnable(Z)V

    return-void
.end method

.method public setImageExposure(F)V
    .registers 2

    .line 2342
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setImageExposure(F)V

    return-void
.end method

.method public setLandscape(III)I
    .registers 4

    .line 6130
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setLandscape(III)I

    move-result p0

    return p0
.end method

.method public setLargeMattingModelEnable(Z)V
    .registers 2

    .line 5148
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setLargeMattingModelEnable(Z)V

    return-void
.end method

.method public setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
    .registers 8

    .line 6687
    iget v0, p1, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_131

    const/16 v1, 0x15

    if-eq v0, v1, :cond_11d

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_131

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1c

    .line 6748
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V

    return-void

    .line 6743
    :cond_1c
    check-cast p1, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;

    .line 6744
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V

    return-void

    .line 6707
    :cond_24
    move-object v0, p1

    check-cast v0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;

    .line 6710
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_asf_amount"

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 6711
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_4d

    .line 6712
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->amount:F

    .line 6714
    :cond_4d
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_asf_over_ratio"

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 6715
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_73

    .line 6716
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->overRatio:F

    .line 6718
    :cond_73
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_asf_gpu_power_level"

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    .line 6719
    const-string v2, "VERecorder"

    if-eqz v1, :cond_b3

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b3

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_b3

    .line 6720
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->powerLevelPara:I

    .line 6721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powerLevelPara: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6723
    :cond_b3
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v3, "ve_asf_init_delay_frame_cnt"

    invoke-virtual {v1, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    if-eqz v1, :cond_f1

    .line 6724
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_f1

    .line 6725
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->initDelayFrameCnt:I

    .line 6726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDelayFrameCnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6728
    :cond_f1
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_asf_process_delay_frame_cnt"

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    if-eqz v1, :cond_117

    .line 6729
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_117

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_117

    .line 6730
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;->processDelayFrameCnt:I

    .line 6733
    :cond_117
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V

    return-void

    .line 6689
    :cond_11d
    check-cast p1, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;

    .line 6690
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mModelDownload:Lcom/ss/android/vesdk/lens/VEModelDownload$IModelDownload;

    if-nez v0, :cond_124

    return-void

    .line 6691
    :cond_124
    new-instance v1, Lcom/ss/android/vesdk/VERecorder$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$19;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V

    const-string p0, "lens_taint_scene_detect"

    const-string p1, "TaintSceneDetectModel"

    invoke-interface {v0, p0, p1, v1}, Lcom/ss/android/vesdk/lens/VEModelDownload$IModelDownload;->downloadModel(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/lens/VEModelDownload$VEModelDownloadCallback;)V

    return-void

    .line 6738
    :cond_131
    check-cast p1, Lcom/ss/android/vesdk/lens/VELumaDetectParams;

    .line 6739
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V

    return-void
.end method

.method public setMaleMakeupState(Z)I
    .registers 2

    .line 5223
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setMaleMakeupState(Z)I

    move-result p0

    return p0
.end method

.method public setMockPreviewSettings(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 2274
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->setMockPreviewSettings(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public setModelDownloadInterface(Lcom/ss/android/vesdk/lens/VEModelDownload$IModelDownload;)I
    .registers 2

    .line 6651
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder;->mModelDownload:Lcom/ss/android/vesdk/lens/VEModelDownload$IModelDownload;

    const/4 p0, 0x0

    return p0
.end method

.method public setMusicNodes(Ljava/lang/String;)V
    .registers 2

    .line 5184
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setMusicNodes(Ljava/lang/String;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 6199
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setOnErrorListener(Lcom/ss/android/vesdk/VECommonCallback;)V

    return-void
.end method

.method public setOnFrameAvailableListener(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 5008
    :cond_4
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$16;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/VERecorder$16;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListener;)V

    move-object p1, v0

    :goto_a
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V

    return-void
.end method

.method public setOnFrameAvailableListener(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 5052
    :cond_4
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$17;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/VERecorder$17;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;)V

    move-object p1, v0

    :goto_a
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V

    return-void
.end method

.method public setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V
    .registers 2

    .line 5095
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V

    return-void
.end method

.method public setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 6208
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V

    return-void
.end method

.method public setOnPictureTakenProxyListener(Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;)V
    .registers 2

    .line 7119
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setOnPictureTakenProxyListener(Lcom/ss/android/vesdk/VERecorder$OnPictureTakenProxyListener;)V

    return-void
.end method

.method public setOnPreviewDataCallbackListener(Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;)V
    .registers 4

    .line 7058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnPreviewDataCallbackListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7059
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setOnPreviewDataCallbackListener(Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;)V

    return-void
.end method

.method public setPaddingBottomInRatio34(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    goto :goto_11

    .line 3270
    :cond_c
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setPaddingBottomInRatio34(F)V

    :cond_11
    :goto_11
    return-void
.end method

.method public setPreSavePcmSize(I)V
    .registers 2

    .line 4090
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setPreSavePcmSize(I)V

    return-void
.end method

.method public setPreviewDuetVideoPaused(Z)V
    .registers 2

    .line 694
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setPreviewDuetVideoPaused(Z)V

    return-void
.end method

.method public setPreviewRadioListener(Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V
    .registers 2

    .line 5720
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setPreviewRadioListener(Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V

    return-void
.end method

.method public setPreviewRatio(Lcom/ss/android/vesdk/VEPreviewRadio;Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;ILandroid/content/Context;)V
    .registers 27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 3318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3319
    invoke-static/range {p6 .. p6}, Lcom/ss/android/vesdk/utils/VEScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    .line 3320
    invoke-static/range {p6 .. p6}, Lcom/ss/android/vesdk/utils/VEScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v8

    .line 3321
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ss/android/vesdk/runtime/VERuntime;->isEnableRefactorRecorder()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2b

    .line 3322
    iget-object v0, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/ss/android/vesdk/TERecorderBase;->setPreviewRatio(IFLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)V

    return-void

    :cond_2b
    if-eqz v4, :cond_35

    .line 3326
    sget-object v9, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    if-ne v1, v9, :cond_35

    .line 3327
    iget v7, v4, Lcom/ss/android/vesdk/VESize;->width:I

    .line 3328
    iget v8, v4, Lcom/ss/android/vesdk/VESize;->height:I

    :cond_35
    mul-int/lit8 v9, v7, 0x10

    mul-int/lit8 v11, v8, 0x9

    if-ne v9, v11, :cond_55

    .line 3331
    sget-object v9, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    if-ne v1, v9, :cond_41

    .line 3332
    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 3334
    :cond_41
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget v11, v11, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-ne v11, v9, :cond_55

    .line 3335
    iget-object v9, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    sget-object v11, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    iput v11, v9, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    .line 3338
    :cond_55
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget v12, v11, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    const-string v13, "VERecorder"

    const/4 v14, 0x1

    if-ne v9, v12, :cond_92

    iget-object v9, v11, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz v9, :cond_92

    if-eqz v4, :cond_91

    .line 3339
    iget-object v9, v11, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSize:Lcom/ss/android/vesdk/VESize;

    if-eqz v9, :cond_91

    invoke-virtual {v4, v9}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_91

    .line 3340
    iget-object v9, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iput-object v4, v9, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSize:Lcom/ss/android/vesdk/VESize;

    .line 3341
    iput-boolean v14, v9, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSizeChanged:Z

    .line 3342
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPreviewRatio: View size will be changed to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VESize;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_91
    return-void

    :cond_92
    :goto_92
    if-eqz v3, :cond_96

    move-object v9, v3

    goto :goto_9f

    .line 3348
    :cond_96
    new-instance v9, Lcom/ss/android/vesdk/VESize;

    iget v11, v2, Lcom/ss/android/vesdk/VESize;->width:I

    iget v12, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v9, v11, v12}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 3349
    :goto_9f
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget v11, v11, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    sget-object v12, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eq v11, v15, :cond_bf

    if-ne v1, v12, :cond_ae

    goto :goto_bf

    .line 3352
    :cond_ae
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget v11, v11, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    sget-object v15, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eq v11, v10, :cond_bf

    if-ne v1, v15, :cond_bd

    goto :goto_bf

    :cond_bd
    const/4 v10, 0x0

    goto :goto_c0

    :cond_bf
    :goto_bf
    move v10, v14

    :goto_c0
    and-int/lit8 v11, p5, 0x4

    if-eqz v11, :cond_e1

    .line 3357
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget v11, v11, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    sget-object v15, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-ne v11, v14, :cond_d4

    if-ne v1, v12, :cond_d4

    :goto_d2
    const/4 v10, 0x0

    goto :goto_e1

    .line 3359
    :cond_d4
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget v11, v11, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-ne v11, v14, :cond_e1

    if-ne v1, v15, :cond_e1

    goto :goto_d2

    .line 3364
    :cond_e1
    :goto_e1
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget-boolean v14, v11, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSizeChanged:Z

    if-eqz v14, :cond_e8

    const/4 v10, 0x0

    .line 3368
    :cond_e8
    invoke-virtual {v11}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v11

    instance-of v11, v11, Lcom/ss/android/vesdk/render/VERenderSurfaceView;

    if-eqz v11, :cond_fd

    .line 3369
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v11}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v11

    check-cast v11, Lcom/ss/android/vesdk/render/VERenderSurfaceView;

    invoke-virtual {v11}, Lcom/ss/android/vesdk/render/VERenderSurfaceView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v11

    goto :goto_113

    .line 3370
    :cond_fd
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v11}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v11

    instance-of v11, v11, Lcom/ss/android/vesdk/render/VERenderTextureView;

    if-eqz v11, :cond_265

    .line 3371
    iget-object v11, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v11}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v11

    check-cast v11, Lcom/ss/android/vesdk/render/VERenderTextureView;

    invoke-virtual {v11}, Lcom/ss/android/vesdk/render/VERenderTextureView;->getTextureView()Landroid/view/TextureView;

    move-result-object v11

    .line 3376
    :goto_113
    sget-object v14, Lcom/ss/android/vesdk/VERecorder$20;->$SwitchMap$com$ss$android$vesdk$VEPreviewRadio:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    const-string v15, "previewSize is not fit with PREVIEW_RADIO!"

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-eq v14, v3, :cond_17d

    const/4 v3, 0x3

    move/from16 v18, v10

    const/4 v10, 0x2

    if-eq v14, v10, :cond_155

    if-eq v14, v3, :cond_155

    const/4 v10, 0x4

    if-eq v14, v10, :cond_155

    const/4 v3, 0x5

    if-eq v14, v3, :cond_134

    move/from16 v3, v16

    goto/16 :goto_1b1

    :cond_134
    int-to-float v3, v7

    mul-float v3, v3, v16

    int-to-float v10, v8

    div-float/2addr v3, v10

    .line 3408
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v4, :cond_14e

    .line 3412
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v4, :cond_14a

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->height:I

    goto :goto_14b

    :cond_14a
    const/4 v4, -0x1

    :goto_14b
    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1b1

    .line 3415
    :cond_14e
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1b1

    :cond_155
    if-eqz v2, :cond_166

    .line 3398
    iget v4, v2, Lcom/ss/android/vesdk/VESize;->width:I

    const/16 v19, 0x4

    mul-int/lit8 v4, v4, 0x4

    iget v8, v2, Lcom/ss/android/vesdk/VESize;->height:I

    mul-int/2addr v8, v3

    if-eq v4, v8, :cond_166

    .line 3399
    invoke-static {v13, v15}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3403
    :cond_166
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3404
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    int-to-float v4, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v4, v7

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x3f400000    # 0.75f

    goto :goto_1b1

    :cond_17d
    move/from16 v18, v10

    if-eqz v2, :cond_18f

    .line 3380
    iget v3, v2, Lcom/ss/android/vesdk/VESize;->width:I

    mul-int/lit8 v3, v3, 0x10

    iget v4, v2, Lcom/ss/android/vesdk/VESize;->height:I

    mul-int/lit8 v4, v4, 0x9

    if-eq v3, v4, :cond_18f

    .line 3381
    invoke-static {v13, v15}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3385
    :cond_18f
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    and-int/lit8 v3, p5, 0x8

    if-eqz v3, :cond_1a1

    .line 3388
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1af

    .line 3390
    :cond_1a1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    int-to-float v4, v7

    const/high16 v7, 0x41100000    # 9.0f

    div-float/2addr v4, v7

    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1af
    const/high16 v3, 0x3f100000    # 0.5625f

    :goto_1b1
    if-nez p3, :cond_1ed

    .line 3428
    sget-object v4, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    if-eq v1, v4, :cond_1bb

    sget-object v4, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    if-ne v1, v4, :cond_1bf

    .line 3429
    :cond_1bb
    iget v4, v9, Lcom/ss/android/vesdk/VESize;->width:I

    iput v4, v9, Lcom/ss/android/vesdk/VESize;->height:I

    :cond_1bf
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_1ed

    .line 3433
    iget v4, v9, Lcom/ss/android/vesdk/VESize;->width:I

    const/16 v7, 0x2d0

    if-lt v4, v7, :cond_1ed

    .line 3436
    iget v8, v9, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float v8, v8

    mul-float v8, v8, v16

    int-to-float v4, v4

    div-float/2addr v8, v4

    .line 3437
    iget-object v4, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v4

    if-ge v4, v7, :cond_1e6

    iget-object v4, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v7

    :cond_1e6
    iput v7, v9, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v4, v7

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 3438
    iput v4, v9, Lcom/ss/android/vesdk/VESize;->height:I

    .line 3443
    :cond_1ed
    iget-object v4, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget-object v7, v4, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-nez v7, :cond_1f5

    const/4 v10, 0x0

    goto :goto_1f7

    :cond_1f5
    move/from16 v10, v18

    :goto_1f7
    if-eqz v10, :cond_225

    const/16 v17, 0x2

    and-int/lit8 v7, p5, 0x2

    if-eqz v7, :cond_203

    const/4 v7, 0x1

    .line 3448
    invoke-virtual {v4, v7}, Lcom/ss/android/vesdk/TERecorderBase;->forceFirstFrameHasEffect(Z)V

    .line 3450
    :cond_203
    iget-object v4, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v4, v7, v3, v2, v9}, Lcom/ss/android/vesdk/TERecorderBase;->setPreviewRatio(IFLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)V

    .line 3451
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object v2

    new-instance v3, Lcom/ss/android/vesdk/VERecorder$14;

    invoke-direct {v3, v0, v5, v6}, Lcom/ss/android/vesdk/VERecorder$14;-><init>(Lcom/ss/android/vesdk/VERecorder;J)V

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/render/VERenderView;->addSurfaceCallback(Lcom/ss/android/vesdk/render/VESurfaceCallback;)Z

    .line 3485
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    new-instance v3, Lcom/ss/android/vesdk/VERecorder$15;

    invoke-direct {v3, v0, v11}, Lcom/ss/android/vesdk/VERecorder$15;-><init>(Lcom/ss/android/vesdk/VERecorder;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/TERecorderBase;->stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    goto :goto_25c

    .line 3498
    :cond_225
    iget v2, v4, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_231

    sget-object v2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    if-eq v1, v2, :cond_245

    :cond_231
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget v2, v2, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    sget-object v3, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 3499
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_23f

    if-eq v1, v12, :cond_245

    :cond_23f
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget-boolean v2, v2, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSizeChanged:Z

    if-eqz v2, :cond_248

    .line 3501
    :cond_245
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 3503
    :cond_248
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget-boolean v3, v2, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSizeChanged:Z

    if-nez v3, :cond_257

    .line 3504
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v9}, Lcom/ss/android/vesdk/TERecorderBase;->setPreviewRatio(IFLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)V

    .line 3506
    :cond_257
    iget-object v2, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/ss/android/vesdk/TERecorderBase;->mRenderViewSizeChanged:Z

    .line 3508
    :goto_25c
    iget-object v0, v0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    return-void

    .line 3373
    :cond_265
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "renderView not support!"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviewRotation(I)V
    .registers 2

    .line 2517
    rem-int/lit16 p1, p1, 0x168

    .line 2518
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setPreviewRotation(I)V

    return-void
.end method

.method public setReactPosMarginInVideoRecordPixel(IIII)V
    .registers 5

    .line 728
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->setReactPosMarginInVideoRecordPixel(IIII)V

    return-void
.end method

.method public setReactionBorderParam(II)V
    .registers 3

    .line 715
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setReactionBorderParam(II)V

    return-void
.end method

.method public setReactionMaskImagePath(Ljava/lang/String;Z)Z
    .registers 3

    .line 811
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setReactionMaskImagePath(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setRecordBGM(Ljava/lang/String;III)I
    .registers 12
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x7ddab13f
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/vesdk/TERecorderBase;->setRecordBGM(Ljava/lang/String;JJI)I

    move-result p0

    return p0
.end method

.method public setRecordMaxDuration(J)V
    .registers 3

    .line 1445
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setRecordMaxDuration(J)V

    return-void
.end method

.method public setRecordPrepareTime(J)I
    .registers 3

    .line 6267
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setRecordPrepareTime(J)I

    move-result p0

    return p0
.end method

.method public setRecorderPreviewListener(Lcom/ss/android/vesdk/VEListener$VERecorderPreviewListener;)V
    .registers 2

    .line 3860
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setRecorderPreviewListener(Lcom/ss/android/vesdk/VEListener$VERecorderPreviewListener;)V

    return-void
.end method

.method public setRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    return-void
.end method

.method public setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 5120
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 5107
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReshapeIntensity(IF)I
    .registers 3

    .line 3047
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setReshapeIntensity(IF)I

    move-result p0

    return p0
.end method

.method public setReshapeIntensityDict(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 3068
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setReshapeIntensityDict(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public setReshapeParam(Ljava/lang/String;Ljava/util/Map;)I
    .registers 3
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

    .line 3079
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setReshapeParam(Ljava/lang/String;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public setReshapeResource(Ljava/lang/String;)I
    .registers 2

    .line 3058
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setReshapeResource(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSATZoomLisntener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V
    .registers 2

    .line 3850
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V

    return-void
.end method

.method public setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)V
    .registers 3

    .line 6908
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)I

    return-void
.end method

.method public setScanArea(FFFF)V
    .registers 5

    .line 5756
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->setScanArea(FFFF)V

    return-void
.end method

.method public setShaderZoomListender(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V
    .registers 2

    .line 3841
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V

    return-void
.end method

.method public setSharedTextureStatus(Z)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3170
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 3171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iesve_verecorder_use_sharedtexture"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    .line 3172
    const-string v3, "old"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 3173
    invoke-static {v2, v4, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 3174
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSharedTextureStatus(Z)Z

    move-result p0

    return p0
.end method

.method public setSkinTone(Ljava/lang/String;)I
    .registers 4

    .line 3789
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSkinTone(Ljava/lang/String;)I

    move-result p0

    .line 3791
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3792
    const-string v1, "skinToneResPath"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3793
    const-string p1, "resultCode"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3794
    const-string p1, "vesdk_event_recorder_skintone"

    const-string v1, "behavior"

    invoke-static {p1, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_20} :catch_21

    return p0

    :catch_21
    move-exception p1

    .line 3796
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public setSkinToneIntensity(F)I
    .registers 6

    .line 3809
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSkinToneIntensity(F)I

    move-result p0

    .line 3810
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3812
    :try_start_b
    const-string v1, "intensity"

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3813
    const-string p1, "resultCode"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3814
    const-string p1, "vesdk_event_recorder_skintone_intensity"

    const-string v1, "behavior"

    invoke-static {p1, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p1

    .line 3816
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public setSlamFace(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 4706
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSlamFace(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
    .registers 2

    .line 3625
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V

    return-void
.end method

.method public setSwapDuetRegion(Z)V
    .registers 2

    .line 652
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSwapDuetRegion(Z)V

    return-void
.end method

.method public setSwapReactionRegion(Z)V
    .registers 2

    .line 661
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSwapReactionRegion(Z)V

    return-void
.end method

.method public setTorch(Z)V
    .registers 2
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = -0x12348217
    .end annotation

    .line 2640
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->switchTorch(Z)V

    return-void
.end method

.method public setUseMultiPreviewRatio(Z)V
    .registers 2

    .line 6986
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setUseMultiPreviewRatio(Z)V

    return-void
.end method

.method public setVideoBgSpeed(D)V
    .registers 3

    .line 831
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setVideoBgSpeed(D)V

    return-void
.end method

.method public setVideoEncodeRotation(Lcom/ss/android/vesdk/VERecorder$VERotation;)V
    .registers 2

    .line 5992
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5a

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setVideoEncodeRotation(I)V

    return-void
.end method

.method public setVoiceActivityDetection(Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;)V
    .registers 2

    .line 4081
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setVoiceActivityDetectCallback(Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;)V

    return-void
.end method

.method public setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V
    .registers 2

    .line 2499
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V

    return-void
.end method

.method public setWaterMark(Lcom/ss/android/vesdk/VEWatermarkParam;)V
    .registers 3

    .line 5581
    iget v0, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    .line 5582
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setWaterMark(Lcom/ss/android/vesdk/VEWatermarkParam;)V

    return-void
.end method

.method public shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)V
    .registers 17

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 1681
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/vesdk/VERecorder;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;ZZ)V

    return-void
.end method

.method public shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;ZZ)V
    .registers 18

    .line 1649
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1650
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1651
    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_20

    .line 1652
    const-string v1, "behavior"

    const-string v2, "tag"

    if-eqz p7, :cond_22

    .line 1653
    :try_start_15
    const-string v3, "takePicture"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1654
    const-string v2, "vesdk_event_recorder_take_picture"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_30

    :catch_20
    move-exception v0

    goto :goto_2d

    .line 1656
    :cond_22
    const-string v3, "shotScreen"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1657
    const-string v2, "vesdk_event_recorder_shot_screen"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2c} :catch_20

    goto :goto_30

    .line 1661
    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1664
    :goto_30
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/vesdk/TERecorderBase;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)I

    return-void
.end method

.method public shotScreen(IIZZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;Z)V
    .registers 10

    .line 1612
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 1614
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1615
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1616
    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_14} :catch_25

    .line 1617
    const-string v1, "behavior"

    const-string v2, "tag"

    if-eqz p6, :cond_28

    .line 1618
    :try_start_1a
    const-string p6, "takePicture"

    invoke-virtual {v0, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1619
    const-string p6, "vesdk_event_recorder_take_picture"

    invoke-static {p6, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_36

    :catch_25
    move-exception v0

    move-object p6, v0

    goto :goto_33

    .line 1621
    :cond_28
    const-string p6, "shotScreen"

    invoke-virtual {v0, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1622
    const-string p6, "vesdk_event_recorder_shot_screen"

    invoke-static {p6, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_32} :catch_25

    goto :goto_36

    .line 1626
    :goto_33
    invoke-virtual {p6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1629
    :goto_36
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->shotScreen(IIZZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)I

    return-void
.end method

.method public shotScreen(Lcom/ss/android/vesdk/VEShotScreenSettings;)V
    .registers 9

    .line 1692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1693
    const-string v0, "ve_use_camera"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    .line 1694
    new-instance v6, Lcom/ss/android/vesdk/VEShotScreenSettings$Builder;

    invoke-direct {v6, p1}, Lcom/ss/android/vesdk/VEShotScreenSettings$Builder;-><init>(Lcom/ss/android/vesdk/VEShotScreenSettings;)V

    .line 1695
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getScreenCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 1697
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$7;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/VERecorder$7;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEShotScreenSettings;JLcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)V

    .line 1739
    invoke-virtual {v6, v0}, Lcom/ss/android/vesdk/VEShotScreenSettings$Builder;->setShotScreenCallback(Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)Lcom/ss/android/vesdk/VEShotScreenSettings$Builder;

    goto :goto_23

    :cond_21
    move-object v1, p0

    move-object v2, p1

    .line 1742
    :goto_23
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getBitmapCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 1744
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$8;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/VERecorder$8;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEShotScreenSettings;JLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V

    .line 1786
    invoke-virtual {v6, v0}, Lcom/ss/android/vesdk/VEShotScreenSettings$Builder;->setBitmapCallback(Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)Lcom/ss/android/vesdk/VEShotScreenSettings$Builder;

    .line 1789
    :cond_31
    iget-object p0, v1, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/TERecorderBase;->shotScreen(Lcom/ss/android/vesdk/VEShotScreenSettings;)I

    return-void
.end method

.method public shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Z)V
    .registers 26

    .line 1489
    const-string v0, "ve_use_camera"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    .line 1490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1491
    new-instance v15, Lcom/ss/android/vesdk/VERecorder$5;

    move-object/from16 v4, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v8, p5

    move-object/from16 v11, p7

    move/from16 v5, p8

    move-object v3, v15

    invoke-direct/range {v3 .. v11}, Lcom/ss/android/vesdk/VERecorder$5;-><init>(Lcom/ss/android/vesdk/VERecorder;ZJZIILcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)V

    .line 1520
    iget-object v8, v4, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    const/16 v16, 0x0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v8 .. v16}, Lcom/ss/android/vesdk/TERecorderBase;->shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Z)I

    return-void
.end method

.method public shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;ZZ)V
    .registers 24

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1540
    new-instance v12, Lcom/ss/android/vesdk/VERecorder$6;

    move-object v1, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v5, p5

    move-object/from16 v8, p7

    move/from16 v2, p9

    move-object v0, v12

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/vesdk/VERecorder$6;-><init>(Lcom/ss/android/vesdk/VERecorder;ZJZIILcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)V

    .line 1569
    iget-object v5, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lcom/ss/android/vesdk/TERecorderBase;->shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Z)I

    return-void
.end method

.method public slamDeviceConfig(ZIZZZZLjava/lang/String;)I
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4503
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/ss/android/vesdk/VERecorder;->slamDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public slamDeviceConfig(ZZZZ)I
    .registers 5

    .line 4515
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->slamDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public slamGetTextLimitCount(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
    .registers 2

    .line 4679
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->slamGetTextLimitCount(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
    .registers 2

    .line 4687
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I

    move-result p0

    return p0
.end method

.method public slamNotifyHideKeyBoard(Z)I
    .registers 2

    .line 4662
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->slamNotifyHideKeyBoard(Z)I

    move-result p0

    return p0
.end method

.method public slamProcessDoubleClickEvent(FF)I
    .registers 3

    .line 4641
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessDoubleClickEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestAcc(DDDD)I
    .registers 9

    .line 4537
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessIngestAcc(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGra(DDDD)I
    .registers 9

    .line 4561
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessIngestGra(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGyr(DDDD)I
    .registers 9

    .line 4549
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessIngestGyr(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestOri([DD)I
    .registers 4

    .line 4571
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessIngestOri([DD)I

    move-result p0

    return p0
.end method

.method public slamProcessPanEvent(FFFFF)I
    .registers 6

    .line 4610
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessPanEvent(FFFFF)I

    move-result p0

    return p0
.end method

.method public slamProcessRotationEvent(FF)I
    .registers 3

    .line 4630
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessRotationEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessScaleEvent(FF)I
    .registers 3

    .line 4620
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessScaleEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEvent(FF)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4583
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder;->processTouchEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEventByType(IFFI)I
    .registers 5

    .line 4596
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->slamProcessTouchEventByType(IFFI)I

    move-result p0

    return p0
.end method

.method public slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I
    .registers 5

    .line 4653
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetLanguage(Ljava/lang/String;)I
    .registers 2

    .line 4671
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->slamSetLanguage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetTextBitmapCallback(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)I
    .registers 2

    .line 4695
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->slamGetTextBitmap(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)I

    move-result p0

    return p0
.end method

.method public startAudioRecorder()V
    .registers 2

    const/4 v0, 0x0

    .line 1402
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VERecorder;->startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 1413
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public startCameraPreview()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2353
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->startCameraPreview()V

    return-void
.end method

.method public startCameraPreview(Lcom/ss/android/vesdk/camera/ICameraPreview;)V
    .registers 2

    .line 2361
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->startCameraPreview(Lcom/ss/android/vesdk/camera/ICameraPreview;)V

    return-void
.end method

.method public startMediaRecord(Ljava/lang/String;Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 3

    .line 6558
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->startMediaRecord(Ljava/lang/String;Lcom/ss/android/vesdk/camera/ICameraCapture;)V

    return-void
.end method

.method public startPlayTrack(II)I
    .registers 4

    .line 6593
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/vesdk/TERecorderBase;->startPlayTrack(IIZ)I

    move-result p0

    return p0
.end method

.method public startPlayTrack(IIZ)I
    .registers 4

    .line 6605
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->startPlayTrack(IIZ)I

    move-result p0

    return p0
.end method

.method public startPrePlay(Lcom/ss/android/vesdk/model/VEPrePlayParams;)I
    .registers 2

    .line 6286
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->startPrePlay(Lcom/ss/android/vesdk/model/VEPrePlayParams;)I

    move-result p0

    return p0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .registers 3

    .line 2411
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->startPreview(Landroid/view/Surface;)V

    const/4 p0, 0x0

    .line 2412
    const-string p1, "behavior"

    const-string v0, "vesdk_event_recorder_start_preview_async"

    invoke-static {v0, p0, p1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 2424
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$13;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/vesdk/VERecorder$13;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    .line 2440
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TERecorderBase;->startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public startRecord(F)I
    .registers 3

    .line 1005
    const-string v0, ""

    invoke-virtual {p0, v0, v0, p1}, Lcom/ss/android/vesdk/VERecorder;->startRecord(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public startRecord(Ljava/lang/String;F)I
    .registers 5

    .line 1015
    const-string v0, "VERecorder"

    const-string v1, "startRecord in mp4 mode..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->startRecord(Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 7

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TEKaraokeRecorder startRecord (this@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->startRecord(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    .line 1031
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1033
    :try_start_31
    const-string p2, "speed"

    float-to-double v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1034
    const-string p2, "resultCode"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1035
    const-string p2, "vesdk_event_recorder_start_record_async"

    const-string p3, "behavior"

    invoke-static {p2, p1, p3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_43} :catch_44

    return p0

    :catch_44
    move-exception p1

    .line 1038
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public startRecordAsync(FLcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 1053
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$2;-><init>(Lcom/ss/android/vesdk/VERecorder;FLcom/ss/android/vesdk/VEListener$VECallListener;)V

    .line 1073
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TERecorderBase;->startRecordAsync(FLcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public startRender()I
    .registers 1

    .line 6521
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->startRender()I

    move-result p0

    return p0
.end method

.method public startRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 6495
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->startRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public startShaderZoom(F)V
    .registers 2

    .line 3912
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->startShaderZoom(F)V

    return-void
.end method

.method public startZoom(F)V
    .registers 2

    .line 3902
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->startZoom(F)V

    return-void
.end method

.method public stopAudioRecorder()V
    .registers 2

    const/4 v0, 0x0

    .line 1424
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VERecorder;->stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 1435
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public stopCameraPreview()V
    .registers 1

    .line 2370
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->stopCameraPreview()V

    return-void
.end method

.method public stopFollowShowRender(Z)V
    .registers 2

    .line 6463
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->stopFollowShowRender(Z)V

    return-void
.end method

.method public stopMediaRecord(Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 2

    .line 6550
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->stopMediaRecord(Lcom/ss/android/vesdk/camera/ICameraCapture;)V

    return-void
.end method

.method public stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;)I
    .registers 4

    .line 6303
    new-instance v0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;-><init>()V

    const/4 v1, 0x0

    .line 6304
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;->setSync(Z)Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;

    move-result-object v0

    .line 6305
    invoke-virtual {v0}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;->build()Lcom/ss/android/vesdk/model/VEPrePlayStopParams;

    move-result-object v0

    .line 6306
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder;->stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I

    move-result p0

    return p0
.end method

.method public stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I
    .registers 3

    .line 6314
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I

    move-result p0

    return p0
.end method

.method public stopPreview(Z)I
    .registers 2

    .line 6149
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->stopPreview(Z)I

    move-result p0

    return p0
.end method

.method public stopPreview()V
    .registers 1

    .line 2450
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->stopPreview()V

    return-void
.end method

.method public stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 2

    .line 2470
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;Z)V
    .registers 3

    .line 2480
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;Z)V

    return-void
.end method

.method public stopPreviewParallel()I
    .registers 1

    .line 6531
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->stopPreviewParallel()I

    move-result p0

    return p0
.end method

.method public stopRecord()I
    .registers 1

    .line 1097
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->stopRecord()I

    move-result p0

    return p0
.end method

.method public stopRecord(Lcom/ss/android/vesdk/VEListener$VECallListener;)I
    .registers 4

    .line 6159
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->stopRecord(Lcom/ss/android/vesdk/VEListener$VECallListener;)I

    move-result p0

    .line 6161
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 6163
    :try_start_b
    const-string v0, "resultCode"

    if-lez p0, :cond_11

    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6164
    const-string v0, "vesdk_event_recorder_record_finish"

    const-string v1, "behavior"

    invoke-static {v0, p1, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p1

    .line 6167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public stopRecord(Z)I
    .registers 2

    .line 1110
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->stopRecord(Z)I

    move-result p0

    return p0
.end method

.method public stopRecordAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 1124
    new-instance v0, Lcom/ss/android/vesdk/VERecorder$3;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/VERecorder$3;-><init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    .line 1144
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TERecorderBase;->stopRecordAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public stopRender(Z)V
    .registers 2

    .line 6455
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->stopRender(Z)V

    return-void
.end method

.method public stopZoom()V
    .registers 1

    .line 3922
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->stopZoom()V

    return-void
.end method

.method public suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
    .registers 3

    .line 5815
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z

    move-result p0

    return p0
.end method

.method public swapMainAndPipRenderTarget(Z)Z
    .registers 2

    .line 6829
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->swapMainAndPipRenderTarget(Z)Z

    move-result p0

    return p0
.end method

.method public switchCameraMode(I)I
    .registers 2

    .line 1798
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->switchCameraMode(I)I

    move-result p0

    return p0
.end method

.method public switchEffect(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I
    .registers 2

    .line 3616
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->switchEffect(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    move-result p0

    return p0
.end method

.method public switchEffect(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3523
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/ss/android/vesdk/VERecorder;->switchEffect(Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public switchEffect(Ljava/lang/String;IIZ)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3538
    const-string p4, ""

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VERecorder;->switchEffectWithTag(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public switchEffectWithTag(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3552
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;-><init>()V

    .line 3553
    iput-object p1, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    .line 3554
    iput p2, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerId:I

    .line 3555
    iput p3, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->reqId:I

    .line 3556
    iput-object p4, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerTag:Ljava/lang/String;

    .line 3557
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VERecorder;->switchEffect(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    move-result p0

    return p0
.end method

.method public switchEffectWithTag(Ljava/lang/String;IIZLjava/lang/String;)I
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3572
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;-><init>()V

    .line 3573
    iput-object p1, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    .line 3574
    iput p2, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerId:I

    .line 3575
    iput p3, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->reqId:I

    .line 3576
    iput-object p5, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerTag:Ljava/lang/String;

    .line 3577
    iput-boolean p4, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->needReload:Z

    const/4 p1, 0x1

    .line 3578
    iput-boolean p1, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->isSyncLoadResource:Z

    .line 3579
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VERecorder;->switchEffect(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    move-result p0

    return p0
.end method

.method public switchEffectWithTagSync(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;[F)I
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3597
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;-><init>()V

    .line 3598
    iput-object p1, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    .line 3599
    iput p2, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerId:I

    .line 3600
    iput p3, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->reqId:I

    .line 3601
    iput-object p4, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerTag:Ljava/lang/String;

    .line 3602
    iput-object p5, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->composerTags:[Ljava/lang/String;

    .line 3603
    iput-object p6, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->composerValues:[F

    const/4 p1, 0x1

    .line 3604
    iput-boolean p1, v0, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->isSyncLoadResource:Z

    .line 3605
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VERecorder;->switchEffect(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    move-result p0

    return p0
.end method

.method public switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)V
    .registers 2

    .line 2391
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)V

    return-void
.end method

.method public tryRestore(Ljava/lang/String;IIII)I
    .registers 6

    .line 914
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->tryRestore(Ljava/lang/String;IIII)I

    move-result p0

    return p0
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

    .line 931
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->tryRestore(Ljava/util/List;Ljava/lang/String;II)I

    move-result p0

    return p0
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

    .line 946
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->tryRestoreAsync(Ljava/util/List;Ljava/lang/String;IILcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public unRegSkeletonDetectCallback()V
    .registers 1

    .line 4316
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegSkeletonDetectCallback()V

    return-void
.end method

.method public unRegSmartBeautyCallback()V
    .registers 1

    .line 4371
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegSmartBeautyCallback()V

    return-void
.end method

.method public unregEffectAlgorithmCallback()V
    .registers 1

    .line 4062
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unregEffectAlgorithmCallback()V

    return-void
.end method

.method public unregFaceInfoCallback()V
    .registers 1

    .line 4010
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegFaceInfoCallback()V

    return-void
.end method

.method public unregHandDetecCallback()V
    .registers 1

    .line 4273
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegHandDetectCallback()V

    return-void
.end method

.method public unregSceneDetectCallback()V
    .registers 1

    .line 4253
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unregSceneDetectCallback()V

    return-void
.end method

.method public upExposureCompensation()V
    .registers 1

    .line 2687
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->upExposureCompensation()V

    return-void
.end method

.method public updateAlgorithmRuntimeParam(Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;F)V
    .registers 3

    .line 5624
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->getValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->updateAlgorithmRuntimeParam(IF)V

    return-void
.end method

.method public updateCameraOrientation()V
    .registers 1

    .line 2400
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->updateCameraOrientation()V

    return-void
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

    .line 6258
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->updateClipsTimelineParam(IILjava/util/Map;)I

    move-result p0

    return p0
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 6

    .line 5259
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    .line 5261
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5262
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5263
    const-string p1, "nodeTag"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5264
    const-string p1, "nodeValue"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5265
    const-string p1, "resultCode"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5266
    const-string p1, "vesdk_event_recorder_composer"

    const-string p2, "behavior"

    invoke-static {p1, v0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    move-exception p1

    .line 5268
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 7

    if-eqz p1, :cond_12

    .line 5283
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_12

    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_b

    goto :goto_12

    .line 5286
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/16 p0, -0x64

    return p0
.end method

.method public updateReactionRegion(IIIIF)[I
    .registers 6

    .line 773
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/vesdk/TERecorderBase;->updateReactionRegion(IIIIF)[I

    move-result-object p0

    return-object p0
.end method

.method public updateRotation(FFF)V
    .registers 4

    .line 4453
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->updateRotation(FFF)V

    return-void
.end method

.method public updateTrack(IILcom/ss/android/ttve/model/VETrackParams;)I
    .registers 4

    .line 6237
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;->updateTrack(IILcom/ss/android/ttve/model/VETrackParams;)I

    move-result p0

    return p0
.end method

.method public updateVideoDecodeChainByTimeline()V
    .registers 1

    .line 7127
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->updateVideoDecodeChainByTimeline()V

    return-void
.end method

.method public updateVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 2

    .line 543
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->updateVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    return-void
.end method

.method public useAudioGraphOutput(ZZZZ)V
    .registers 5

    .line 1087
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/TERecorderBase;->useAudioGraphOutput(ZZZZ)V

    return-void
.end method

.method public useMusic(Z)V
    .registers 2

    .line 4381
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->useMusic(Z)V

    return-void
.end method
