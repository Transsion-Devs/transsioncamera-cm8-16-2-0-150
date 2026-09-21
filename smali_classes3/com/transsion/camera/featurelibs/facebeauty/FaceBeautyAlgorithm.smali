.class public Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;
.super Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private currentZoom:Ljava/lang/String;

.field private faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

.field private faceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

.field private mIsCapturing:Z


# direct methods
.method public static synthetic $r8$lambda$3ZXma0n_cGnuX9-bKV5PyA-ocpM(Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->lambda$handleSettingChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GbQ5l9q4y-p2NPQzXMu6z68gGcM(Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->lambda$updateAIConfigInGLThread$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyAlgor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    return-void
.end method

.method private handleSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 175
    sget-object v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSettingChanged key =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 177
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    return-void

    .line 178
    :cond_36
    const-string v0, "aiv2"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "custom"

    .line 179
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "key_gender_attribute_value"

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "key_race"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    const-string p1, "contrast_on"

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_62

    .line 191
    :cond_5f
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    return-void

    :cond_62
    :goto_62
    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

    if-eqz p1, :cond_71

    .line 185
    new-instance v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_71
    return-void
.end method

.method private synthetic lambda$handleSettingChanged$0(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mConfigChanged:Z

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mParameter:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$updateAIConfigInGLThread$1()V
    .registers 1

    .line 327
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateAIConfig()V

    return-void
.end method

.method private releaseFaceBeautyEngine()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    if-eqz v0, :cond_a

    .line 148
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->close()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    :cond_a
    return-void
.end method

.method private updateAIConfig()V
    .registers 9

    .line 218
    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 219
    :goto_9
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_gender_attribute_value"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    goto :goto_1e

    :cond_1c
    sget-object v4, Lcom/transsion/camera/utils/SettingInfo$Gender;->FEMALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    .line 219
    :goto_1e
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/SettingInfoUtils;->parseGender(Ljava/lang/String;Lcom/transsion/camera/utils/SettingInfo$Gender;)Lcom/transsion/camera/utils/SettingInfo$Gender;

    move-result-object v3

    .line 221
    iget-object v4, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v4}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v4

    .line 222
    sget-object v5, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAIConfig() called: isFrontCamera = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", gender = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", configType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    invoke-static {v3, v4, v0, v1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautyDefaultList(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZ)Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateITDFaceBeautyConfig(ZLjava/util/List;)V

    return-void
.end method

.method private updateAIConfigInGLThread()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_b

    .line 322
    const-string v1, "key_mu_face_beauty"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 324
    :goto_c
    const-string v1, "aiv2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

    if-eqz v0, :cond_20

    .line 326
    new-instance v1, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_20
    return-void
.end method

.method private updateCustomConfig()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_d

    .line 229
    sget-object p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateCustomConfig,faceBeautySetting is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_d
    invoke-static {v0}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->getCustomValues(Lcom/transsion/camera/app/common/setting/SettingBase;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateITDFaceBeautyConfig(Z[I)V

    return-void
.end method

.method private updateITDFaceBeautyConfig(ZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateITDFaceBeautyConfig(Z[I)V

    return-void
.end method

.method private updateITDFaceBeautyConfig(Z[I)V
    .registers 7

    .line 268
    sget-object v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateITDFaceBeautyConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    if-nez v0, :cond_20

    return-void

    .line 270
    :cond_20
    sget-object v1, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SETAIGEARPARAM_FLAG:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    const/4 v2, 0x0

    if-eqz p1, :cond_27

    const/4 v3, 0x3

    goto :goto_28

    :cond_27
    move v3, v2

    :goto_28
    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    .line 271
    invoke-static {p2}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->parseConfig([I)Ljava/util/Map;

    move-result-object p2

    .line 273
    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SKINSOFTEN:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_42

    .line 275
    iget-object v3, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    .line 278
    :cond_42
    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SKIN_BEAUTY:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_61

    if-eqz p1, :cond_58

    .line 280
    iget-boolean p1, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->mIsCapturing:Z

    if-eqz p1, :cond_58

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    goto :goto_61

    .line 283
    :cond_58
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    .line 287
    :cond_61
    :goto_61
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_69
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 288
    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SKINSOFTEN:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_69

    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SKIN_BEAUTY:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_86

    goto :goto_69

    .line 291
    :cond_86
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    .line 292
    sget-object v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFeature key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_69

    .line 294
    :cond_c2
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateITDFaceBeautyGender()V

    .line 295
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateSkinType()V

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updatePreviewOrientation()V

    return-void
.end method

.method private updateITDFaceBeautyGender()V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_gender_attribute_value"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/SettingInfoUtils;->parseGender(Ljava/lang/String;)Lcom/transsion/camera/utils/SettingInfo$Gender;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_13

    .line 239
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    if-nez p0, :cond_14

    :goto_13
    return-void

    .line 240
    :cond_14
    sget-object v1, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->GENDER:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    if-ne v0, v2, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x2

    :goto_1d
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    return-void
.end method

.method private updatePreviewOrientation()V
    .registers 3

    .line 93
    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 94
    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mOrientation:I

    if-gez v0, :cond_c

    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    goto :goto_1f

    :cond_c
    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x168

    goto :goto_1f

    .line 96
    :cond_12
    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mOrientation:I

    if-gez v0, :cond_19

    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    goto :goto_1f

    :cond_19
    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    move v0, v1

    .line 98
    :goto_1f
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    if-nez p0, :cond_24

    return-void

    .line 99
    :cond_24
    sget-object v1, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->ROTATION:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    return-void
.end method

.method private updateSkinType()V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    if-nez v0, :cond_5

    return-void

    .line 246
    :cond_5
    sget-object v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$1;->$SwitchMap$com$transsion$camera$app$common$facebeauty$FaceBeautyConstant$ConfigType:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_22

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    move v1, v2

    .line 260
    :cond_22
    :goto_22
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SKINTYPE:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    return-void
.end method


# virtual methods
.method public algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZI)Z
    .registers 16

    .line 121
    iget-object p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p4, "key_mu_face_beauty"

    invoke-interface {p3, p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "contrast_on"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_14

    .line 122
    iput-boolean p4, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return p4

    .line 125
    :cond_14
    iget-object p3, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    if-nez p3, :cond_25

    .line 126
    new-instance p3, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    invoke-direct {p3}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    .line 127
    const-string/jumbo p3, "update"

    invoke-virtual {p0, p3}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->setParameter(Ljava/lang/String;)V

    .line 129
    :cond_25
    iget-object p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p5, "key_camera_zoom"

    invoke-interface {p3, p5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 130
    iget-object p5, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    sget-object p6, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->MTK_ZOOM_FLAG:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    iget-object p7, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->currentZoom:Ljava/lang/String;

    invoke-static {p7, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p7

    const/4 p8, 0x1

    xor-int/2addr p7, p8

    invoke-virtual {p5, p6, p7}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->setFeature(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;I)V

    .line 131
    iput-object p3, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->currentZoom:Ljava/lang/String;

    .line 132
    iget p3, p1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    if-ne p3, p8, :cond_44

    move v3, p4

    goto :goto_45

    :cond_44
    move v3, p8

    .line 133
    :goto_45
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    iget v1, p1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    iget v2, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    iget v4, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->width:I

    iget v5, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->height:I

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->process(IIIII)Z

    move-result p0

    .line 134
    iput-boolean p4, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 155
    const-string p0, "key_mu_face_beauty"

    return-object p0
.end method

.method public init(II)Z
    .registers 3

    .line 72
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    if-eqz p1, :cond_19

    if-nez p2, :cond_8

    goto :goto_19

    .line 74
    :cond_8
    new-instance p1, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updatePreviewOrientation()V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautyEngine:Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyEngine;->success()Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public onCameraOperateAction(I)V
    .registers 4

    .line 301
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onCameraOperateAction(I)V

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1a

    const/16 v0, 0xe

    const/4 v1, 0x0

    if-eq p1, v0, :cond_14

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_11

    return-void

    .line 312
    :cond_11
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->mIsCapturing:Z

    return-void

    .line 308
    :cond_14
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->mIsCapturing:Z

    .line 309
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateAIConfigInGLThread()V

    return-void

    :cond_1a
    const/4 p1, 0x1

    .line 304
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->mIsCapturing:Z

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateAIConfigInGLThread()V

    return-void
.end method

.method public onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V
    .registers 6

    .line 105
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V

    .line 106
    sget-object p1, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onModeInit() called with: mSensorOrientation = ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "], cameraId = ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    const-string p1, "key_gender_attribute_value"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 108
    const-string p1, "key_race"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onModeUnInit()V
    .registers 2

    .line 113
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeUnInit()V

    .line 114
    const-string v0, "key_gender_attribute_value"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 115
    const-string v0, "key_race"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 81
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onOrientationChanged(I)V

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updatePreviewOrientation()V

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 170
    sget-object v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->handleSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSettingReady()V
    .registers 4

    .line 162
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingReady()V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/SettingBase;

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->faceBeautySetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 165
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->handleSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceCreated()V
    .registers 1

    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .registers 5

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3d

    .line 199
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_mu_face_beauty"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    sget-object v0, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter() called with: faceBeautyValue = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_2d

    goto :goto_3d

    .line 202
    :cond_2d
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "aiv2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    :goto_3d
    return-void

    .line 204
    :cond_3e
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateAIConfig()V

    return-void

    .line 207
    :cond_42
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->updateCustomConfig()V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 141
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->releaseFaceBeautyEngine()V

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm;->releaseFaceBeautyEngine()V

    return-void
.end method
