.class public Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;
.super Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.source "SourceFile"


# instance fields
.field private final mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

.field private final mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

.field private volatile mIsContrast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    .line 23
    new-instance v0, Lcom/bytedance/labcv/core/util/ImageUtil;

    invoke-direct {v0}, Lcom/bytedance/labcv/core/util/ImageUtil;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    .line 28
    new-instance v0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Z)Z
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mParameter:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZI)Z
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 59
    iget-boolean v3, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mIsContrast:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    .line 60
    iput-boolean v4, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return v4

    :cond_e
    move/from16 v3, p3

    .line 64
    iput v3, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    move/from16 v5, p4

    .line 65
    iput v5, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    .line 67
    iget v6, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1d

    move v6, v7

    goto :goto_1e

    :cond_1d
    move v6, v4

    .line 68
    :goto_1e
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->screenPocket()Z

    move-result v8

    if-nez v8, :cond_2f

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->screenFlip()Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_2f

    :cond_2b
    move v8, v6

    move/from16 v6, p8

    goto :goto_31

    :cond_2f
    :goto_2f
    move v6, v4

    move v8, v7

    .line 75
    :goto_31
    iget v9, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    rem-int/lit16 v9, v9, 0xb4

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_3d

    move/from16 v16, v3

    move v15, v5

    goto :goto_40

    :cond_3d
    move v15, v3

    move/from16 v16, v5

    .line 79
    :goto_40
    new-instance v3, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;

    invoke-direct {v3}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;-><init>()V

    iget v5, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->rotate(F)Lcom/bytedance/labcv/core/util/ImageUtil$Transition;

    move-result-object v3

    invoke-virtual {v3, v4, v8}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->flip(ZZ)Lcom/bytedance/labcv/core/util/ImageUtil$Transition;

    move-result-object v17

    .line 81
    iget v3, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    if-nez v3, :cond_62

    .line 82
    iget-object v11, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    iget v12, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    sget-object v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texture_Oes:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    sget-object v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    invoke-virtual/range {v11 .. v17}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferTextureToTexture(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)I

    move-result v1

    :goto_60
    move v8, v1

    goto :goto_71

    :cond_62
    if-ne v3, v7, :cond_70

    .line 84
    iget-object v11, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    iget v12, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    sget-object v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    move-object v14, v13

    invoke-virtual/range {v11 .. v17}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferTextureToTexture(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)I

    move-result v1

    goto :goto_60

    :cond_70
    move v8, v4

    :goto_71
    if-gtz v8, :cond_74

    return v4

    .line 91
    :cond_74
    iget-object v1, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->setCameraPosition(Z)V

    .line 92
    iget-object v1, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    iget v3, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    iget v5, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    invoke-virtual {v1, v3, v5}, Lcom/bytedance/labcv/core/util/ImageUtil;->prepareTexture(II)I

    move-result v9

    .line 93
    iget-object v7, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    iget v10, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    iget v11, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    move-wide/from16 v12, p6

    invoke-virtual/range {v7 .. v13}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->process(IIIIJ)Z

    move-result v1

    .line 95
    iget-object v11, v0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    iget v13, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    sget-object v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->reverse()Lcom/bytedance/labcv/core/util/ImageUtil$Transition;

    move-result-object v18

    move/from16 v17, v15

    move-object v15, v14

    move v12, v9

    invoke-virtual/range {v11 .. v18}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferTextureToTexture(IILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)Z

    .line 96
    iput-boolean v4, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return v1
.end method

.method public getDefaultParameter()Ljava/lang/String;
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->screenPocket()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 p0, 0x1

    goto :goto_12

    :cond_10
    iget p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    :goto_12
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 143
    const-string p0, "key_makeup_feature"

    return-object p0
.end method

.method handleMakeUpAlgorithm(Ljava/lang/String;)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMakeUpAlgorithm,value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 178
    iget v2, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-lez v2, :cond_4d

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    .line 180
    iget-boolean v0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mIsContrast:Z

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsContrast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mIsContrast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

    if-eqz v0, :cond_4c

    .line 183
    new-instance v1, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;-><init>(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_4c
    return-void

    .line 192
    :cond_4d
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    return-void

    .line 195
    :cond_50
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    return-void
.end method

.method public init(II)Z
    .registers 4

    .line 47
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    if-eqz p1, :cond_25

    if-nez p2, :cond_8

    goto :goto_25

    .line 51
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->init()Z

    move-result p1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init, result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return p0
.end method

.method public onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V
    .registers 6

    .line 33
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V

    .line 34
    const-string p1, "key_restore_settings_notify_ui"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 35
    const-string p1, "preview_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onModeUnInit()V
    .registers 2

    .line 40
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeUnInit()V

    .line 41
    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 42
    const-string v0, "preview_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    invoke-virtual {p0, p2}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->handleMakeUpAlgorithm(Ljava/lang/String;)V

    .line 158
    :cond_d
    const-string v0, "key_restore_settings_notify_ui"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "end"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_1d
    const-string v0, "preview_state"

    .line 159
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "preview_stopped"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 160
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged,key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

    if-eqz p1, :cond_57

    .line 162
    new-instance p2, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;-><init>(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;)V

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_57
    return-void
.end method

.method public onSettingReady()V
    .registers 3

    .line 148
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingReady()V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->handleMakeUpAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceCreated()V
    .registers 1

    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .registers 7

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter + parameter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-nez p1, :cond_1d

    return-void

    .line 116
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    if-eqz v0, :cond_3f

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->cleanPipeline()V

    goto :goto_60

    .line 120
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    iget-object v1, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->setComposeNodes([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    :goto_4b
    iget-object v1, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->keyArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_60

    .line 123
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    iget-object v3, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v4, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    aget v4, v4, v0

    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->updateComposerNodeIntensity(Ljava/lang/String;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 127
    :cond_60
    :goto_60
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setParameter -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 102
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mImageUtil:Lcom/bytedance/labcv/core/util/ImageUtil;

    invoke-virtual {v0}, Lcom/bytedance/labcv/core/util/ImageUtil;->release()V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->mEffectManager:Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->destroy()V

    const/16 v0, 0xcf5

    const/4 v1, 0x4

    .line 105
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInit -"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
