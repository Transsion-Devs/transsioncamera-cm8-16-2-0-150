.class public Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;
.super Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.source "SourceFile"


# static fields
.field public static final RENDER_EFFECT_OK:I = 0x0

.field public static final RENDER_EFFECT_SDK_ERROR:I = -0x1

.field public static final RENDER_WITHOUT_EFFECT:I = -0x4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBackCamera:Z

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mFilterId:Ljava/lang/String;

.field private mFilterName:Ljava/lang/String;

.field private mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

.field private mIsSurfaceDestroy:Z

.field private mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

.field private final mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

.field private mUseTranssionFilter:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsSurfaceDestroy(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mIsSurfaceDestroy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsSurfaceDestroy(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mIsSurfaceDestroy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdrawPreview(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Landroid/graphics/SurfaceTexture;III)Z
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->drawPreview(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightFilterMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mIsSurfaceDestroy:Z

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mUseTranssionFilter:Z

    .line 124
    new-instance p1, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;-><init>(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    .line 160
    new-instance p1, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$2;-><init>(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    return-void
.end method

.method private createFilterEffect(II)V
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    if-nez v1, :cond_16

    .line 250
    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mEffectWidth:I

    .line 251
    iput p2, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mEffectHeight:I

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    invoke-interface {v1, p1, p2, v0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->createEffect(IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/effect/sdk/NvsVideoEffect;

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    :cond_16
    return-void
.end method

.method private drawPreview(Landroid/graphics/SurfaceTexture;III)Z
    .registers 15

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 197
    :cond_6
    invoke-interface {p1, p3, p4}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->requestTexturePair(II)[I

    move-result-object p1

    .line 198
    aget v3, p1, v0

    const/4 v1, 0x1

    .line 199
    aget p1, p1, v1

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mBackCamera:Z

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->renderOesTextureTo2DTexture(IIIIIZ)V

    move v2, v4

    move v4, v3

    move v3, v5

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long v6, p2, v8

    .line 204
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->updateFilterEffect(II)V

    move-object v1, p0

    move v5, p1

    .line 205
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->render(IIIIJ)I

    move-result p0

    if-nez p0, :cond_37

    .line 207
    invoke-direct {v1, v5, v4, v2, v3}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->onDraw(IIII)Z

    move-result p0

    return p0

    :cond_37
    const/4 p1, -0x4

    if-ne p0, p1, :cond_3f

    .line 209
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->onDraw(IIII)Z

    move-result p0

    return p0

    :cond_3f
    return v0
.end method

.method private initDraw()V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    if-nez v0, :cond_33

    .line 184
    invoke-static {}, Lcom/transsion/nvstream/NVStreamAlgorithm;->getInstance()Lcom/transsion/nvstream/NVStreamAlgorithm;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/nvstream/NVStreamAlgorithm;->initStreamAndEffectSDK(Landroid/content/Context;)V

    .line 185
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;

    invoke-static {}, Lcom/transsion/nvstream/NVStreamAlgorithm;->getInstance()Lcom/transsion/nvstream/NVStreamAlgorithm;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transsion/nvstream/NVStreamAlgorithm;->getNvsEffectSdkContext(Landroid/content/Context;)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;-><init>(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mBackCamera:Z

    :cond_33
    return-void
.end method

.method private onDraw(IIII)Z
    .registers 11

    const/4 p2, 0x0

    .line 217
    invoke-static {p2, p2, p4, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    move v4, p3

    move v5, p4

    move v1, p1

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->drawTexture(IIIII)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateFilterEffect(II)V
    .registers 3

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->clearFilterEffect()V

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->updateFilterId()V

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->createFilterEffect(II)V

    return-void
.end method

.method private updateFilterId()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_supernight_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterName:Ljava/lang/String;

    .line 241
    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;->getFilterIdByFilterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterId:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 243
    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;->getFilterInstallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->installEffect(Ljava/lang/String;)Ljava/lang/String;

    :cond_1b
    return-void
.end method


# virtual methods
.method public clearFilterEffect()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    if-eqz v1, :cond_e

    .line 258
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->clearEffect(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    .line 261
    :cond_e
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "clearEffectResource end "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getDataFlowType()I
    .registers 3

    .line 101
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 102
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_11
    move p0, v0

    goto :goto_15

    :cond_13
    const/16 p0, 0x8

    .line 110
    :goto_15
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x4

    .line 113
    :cond_20
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 85
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    const-string p0, "key_supernight_filter"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string p0, "key_taint_detection"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string p0, "key_lens_correction"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 91
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 2

    .line 118
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeRestriction;->getEmptyRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 120
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 60
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 63
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mUseTranssionFilter:Z

    if-nez p1, :cond_1b

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->initDraw()V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 68
    :cond_1b
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "supernight init"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public releaseRenderResource()V
    .registers 2

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->clearFilterEffect()V

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    if-eqz p0, :cond_a

    .line 267
    invoke-interface {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->destroy()V

    .line 269
    :cond_a
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "releaseRenderResource finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public render(IIIIJ)I
    .registers 15

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    if-eqz v1, :cond_18

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    const-wide/16 v2, 0x3e8

    mul-long v6, p5, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->renderEffect(Ljava/lang/Object;IIIIJ)I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0

    :cond_18
    const/4 p0, -0x4

    return p0
.end method

.method public unInit()V
    .registers 2

    .line 74
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->unInit()V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_a

    .line 76
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 78
    :cond_a
    invoke-static {}, Lcom/transsion/nvstream/NVStreamAlgorithm;->getInstance()Lcom/transsion/nvstream/NVStreamAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/nvstream/NVStreamAlgorithm;->destroyNVStreamingContext()V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 80
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "supernight uninit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
