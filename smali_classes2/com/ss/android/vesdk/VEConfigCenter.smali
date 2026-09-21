.class public Lcom/ss/android/vesdk/VEConfigCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEConfigCenter$ABType;,
        Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;,
        Lcom/ss/android/vesdk/VEConfigCenter$DataType;,
        Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;,
        Lcom/ss/android/vesdk/VEConfigCenter$License;,
        Lcom/ss/android/vesdk/VEConfigCenter$JSONKeys;
    }
.end annotation


# static fields
.field public static APPID:I = 0x54d

.field private static final TAG:Ljava/lang/String; = "VEConfigCenter"

.field private static enablePreloadSo:Z = false

.field private static final sByteBenchLock:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/ss/android/vesdk/VEConfigCenter;


# instance fields
.field private mIsInitByteBench:Z

.field private final sConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEConfigCenter;->sByteBenchLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->mIsInitByteBench:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    .line 45
    const-string v0, "Init config center"

    const-string v1, "VEConfigCenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEConfigCenter;->initConfigCenter()V

    .line 47
    const-string p0, "Init config center done"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addConfigsFromCamera()V
    .registers 9

    .line 385
    invoke-static {}, Lcom/ss/android/vesdk/VECameraConfigCenter;->requestABInfo()Ljava/lang/String;

    move-result-object v0

    .line 387
    :try_start_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 388
    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_88

    .line 389
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 390
    const-string v3, "dataType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 391
    const-string v4, "description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    const-string v5, "defaultVal"

    if-eqz v3, :cond_63

    const/4 v6, 0x1

    if-eq v3, v6, :cond_51

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3e

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2f

    const/4 v3, 0x0

    goto :goto_75

    .line 411
    :cond_2f
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    new-instance v5, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v6, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->STRING:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    sget-object v7, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-direct {v5, v6, v3, v7, v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    :goto_3c
    move-object v3, v5

    goto :goto_75

    .line 406
    :cond_3e
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v3, v5

    .line 407
    new-instance v5, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v6, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->FLOAT:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v7, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-direct {v5, v6, v3, v7, v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    goto :goto_3c

    .line 401
    :cond_51
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 402
    new-instance v5, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v6, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->INTEGER:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v7, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-direct {v5, v6, v3, v7, v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    goto :goto_3c

    .line 396
    :cond_63
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 397
    new-instance v5, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v6, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->BOOLEAN:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v7, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-direct {v5, v6, v3, v7, v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    goto :goto_3c

    :goto_75
    if-eqz v3, :cond_85

    .line 418
    sget-object v4, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FORCAMERA:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->setAbType(Lcom/ss/android/vesdk/VEConfigCenter$ABType;)V

    .line 419
    const-string v4, "key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_85} :catch_89

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_88
    return-void

    :catch_89
    move-exception p0

    .line 423
    const-string v0, "VEConfigCenter"

    const-string v1, "Parse camera config json error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private addConfigsFromEffect()V
    .registers 11

    .line 332
    const-string v4, "ve_detector"

    const-string v5, "ve_image"

    const-string v0, "ve_record"

    const-string v1, "ve_enigma"

    const-string v2, "ve_edit"

    const-string v3, "ve_mv"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 340
    invoke-static {v0, v1}, Lcom/bef/effectsdk/EffectABConfig;->requestABInfoWithLicenseArray([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectABConfig.requestABInfoWithLicenseArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VEConfigCenter"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :try_start_2b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 344
    :goto_31
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_b1

    .line 345
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 346
    const-string v5, "dataType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 347
    const-string v6, "description"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 349
    const-string v7, "defaultVal"

    if-eqz v5, :cond_8c

    if-eq v5, v1, :cond_7a

    const/4 v8, 0x2

    if-eq v5, v8, :cond_67

    const/4 v8, 0x3

    if-eq v5, v8, :cond_55

    const/4 v5, 0x0

    goto :goto_9e

    .line 367
    :cond_55
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    new-instance v7, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v8, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->STRING:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    sget-object v9, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-direct {v7, v8, v5, v9, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    :goto_62
    move-object v5, v7

    goto :goto_9e

    :catch_64
    move-exception v0

    move-object p0, v0

    goto :goto_b2

    .line 362
    :cond_67
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v5, v7

    .line 363
    new-instance v7, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v8, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->FLOAT:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sget-object v9, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-direct {v7, v8, v5, v9, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    goto :goto_62

    .line 357
    :cond_7a
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 358
    new-instance v7, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v8, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->INTEGER:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v9, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-direct {v7, v8, v5, v9, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    goto :goto_62

    .line 352
    :cond_8c
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 353
    new-instance v7, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v8, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->BOOLEAN:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v9, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-direct {v7, v8, v5, v9, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    goto :goto_62

    :goto_9e
    if-eqz v5, :cond_ae

    .line 374
    sget-object v6, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FOREFFECT:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    invoke-virtual {v5, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->setAbType(Lcom/ss/android/vesdk/VEConfigCenter$ABType;)V

    .line 375
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_ae} :catch_64

    :cond_ae
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_b1
    return-void

    .line 379
    :goto_b2
    const-string v0, "Parse effect config json error!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static getInstance()Lcom/ss/android/vesdk/VEConfigCenter;
    .registers 2

    .line 448
    sget-object v0, Lcom/ss/android/vesdk/VEConfigCenter;->sInstance:Lcom/ss/android/vesdk/VEConfigCenter;

    if-nez v0, :cond_19

    .line 449
    const-class v0, Lcom/ss/android/vesdk/VEConfigCenter;

    monitor-enter v0

    .line 450
    :try_start_7
    sget-object v1, Lcom/ss/android/vesdk/VEConfigCenter;->sInstance:Lcom/ss/android/vesdk/VEConfigCenter;

    if-nez v1, :cond_15

    .line 451
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEConfigCenter;-><init>()V

    sput-object v1, Lcom/ss/android/vesdk/VEConfigCenter;->sInstance:Lcom/ss/android/vesdk/VEConfigCenter;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 453
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 456
    :cond_19
    :goto_19
    sget-object v0, Lcom/ss/android/vesdk/VEConfigCenter;->sInstance:Lcom/ss/android/vesdk/VEConfigCenter;

    return-object v0
.end method

.method private importFromJson(Ljava/lang/String;)I
    .registers 3

    .line 824
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 825
    const-string p1, "VEConfigCenter"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    .line 829
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method private initConfigCenter()V
    .registers 18

    move-object/from16 v0, p0

    .line 59
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v2, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->STRING:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    sget-object v3, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    const-string v4, "wide camera device id"

    const-string v5, "-1"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v4, "wide_camera_id"

    invoke-virtual {v0, v4, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 60
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v4, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->BOOLEAN:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "enable using amazing engine for mv"

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v6, "mv_use_amazing_engine"

    invoke-virtual {v0, v6, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 61
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v6, "enable seek opt for predict seek accelerate speed"

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v6, "vesdk_seek_predict_opt"

    invoke-virtual {v0, v6, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 62
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v6, "use mediaCodec.createByCodecName"

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v6, "create_by_codec_name"

    invoke-virtual {v0, v6, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 63
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v6, "enable android hdr2sdr support"

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v6, "enable_android_hdr2sdr_support"

    invoke-virtual {v0, v6, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 64
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v6, "enable android hdr preview support"

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v6, "enable_android_hdr_preview_support"

    invoke-virtual {v0, v6, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 65
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v6, "enable crossplat glbase fbo"

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v6, "crossplat_glbase_fbo"

    invoke-virtual {v0, v6, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 66
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v6, "enable vboost compile"

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v6, "vboost_compile"

    invoke-virtual {v0, v6, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 67
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v6, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->INTEGER:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "use GLES3.0"

    invoke-direct {v1, v6, v7, v3, v8}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v8, "use_open_gl_three"

    invoke-virtual {v0, v8, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 68
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "config max cache count for input decode frame"

    invoke-direct {v1, v6, v8, v3, v9}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v9, "vesdk_max_cache_count"

    invoke-virtual {v0, v9, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 69
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v9, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_DEFAULT:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    const-string v10, "GPU SyncObject type: 0-glFence; 1-eglFence; 2-glFinish"

    invoke-direct {v1, v6, v8, v9, v10}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v9, "gpu_syncobject_type"

    invoke-virtual {v0, v9, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 70
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v10, "compile_probe use libbyte264"

    invoke-direct {v1, v4, v9, v3, v10}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v10, "compile_probe_use_byte264"

    invoke-virtual {v0, v10, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 71
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "compile probe use crf"

    invoke-direct {v1, v6, v10, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "compile_probe_crf"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 72
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "compile probe interval frame"

    invoke-direct {v1, v6, v10, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "compile_probe_interval_frame"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 73
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "compile probe sleep time"

    invoke-direct {v1, v6, v10, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "compile_probe_sleep_time"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 74
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "use libbyte264"

    invoke-direct {v1, v4, v5, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "use_byte264"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 75
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "use new audiosdk api"

    invoke-direct {v1, v4, v5, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "aeabtest_v2api"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 76
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "color space"

    invoke-direct {v1, v4, v9, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "color_space"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 77
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "ve color space for 2020"

    invoke-direct {v1, v4, v9, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "ve_color_space_for_2020"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 78
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "vesdk_audiomix_replace"

    invoke-direct {v1, v4, v9, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 79
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "enable record mpeg4"

    invoke-direct {v1, v4, v5, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "enable_record_mpeg4"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 80
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "enable record hevc"

    invoke-direct {v1, v4, v5, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "ve_enable_record_hevc"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 81
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "record codec type"

    invoke-direct {v1, v6, v8, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "ve_record_codec_type"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 82
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "optimize srv um crash"

    invoke-direct {v1, v4, v5, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "optimize srv_um crash"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 83
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v11, "audio hw encoder"

    invoke-direct {v1, v4, v5, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v11, "vesdk_audio_hw_encoder"

    invoke-virtual {v0, v11, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 84
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v11, Lcom/ss/android/vesdk/VEConfigCenter$DataType;->FLOAT:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "Downgrading recorder fps."

    invoke-direct {v1, v11, v12, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "ve_recorder_fps_downgrade"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 85
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "video_duration_opt"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 86
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "vesdk enable render lib"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "enable_render_lib"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 87
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "vesdk renderlib fbo opt"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "renderlib_fbo_opt"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 88
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "vesdk enable agfx ctx"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "vesdk_use_agfxcontext"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 89
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "vesdk enable reader refactor"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "vesdk_enable_reader_refactor"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 90
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "dmt bingo refactor"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "ve_enable_bingo_refactor"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 91
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "use titan recorder engine"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "ve_use_titan_recorder_engine"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 92
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "enable duet glFinish"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "enable_duet_gl_finish"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 93
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "enable preload effect res"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "ve_enable_preload_effect_res"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 94
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "disable effect internal setting"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "ve_disable_effect_internal_setting"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 95
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "enable titan auto test log"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "ve_enable_titan_auto_test_log"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 96
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v13, "opt first frame"

    invoke-direct {v1, v4, v5, v3, v13}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v13, "ve_opt_first_frame"

    invoke-virtual {v0, v13, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 97
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "opt first frame bypass effect frame cnt"

    invoke-direct {v1, v6, v13, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_opt_first_frame_bypass_effect_frame_cnt"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 98
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "camera frame update independent thread"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_camera_frame_update_independent_thread"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 99
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "ve set camera two output"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_set_camera_two_output"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 100
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "opt titan gpu render follow"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_titan_gpu_render_opt"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 101
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "ve camera output and update strategy"

    invoke-direct {v1, v6, v8, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_camera_output_and_update_strategy"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 102
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "enable 3 buffer"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_enable_three_buffer"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 103
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "effect async detection"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_async_detection"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 104
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "camera open retry"

    invoke-direct {v1, v6, v8, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_retry_count"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 105
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "start preview retry count"

    invoke-direct {v1, v6, v8, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_retry_start_preview_count"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 106
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "stop preview async optimize"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_enable_stop_preview_optimize"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 107
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "Enable editor/compiler audio gbu refactor"

    invoke-direct {v1, v4, v9, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_enable_audio_gbu_refactor"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 108
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "Android Hw encode compile "

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_enable_compile_buffer_hw_encode"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 109
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "enable file info cache"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_enable_file_info_cache"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 111
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "render and encode resolution can be align4"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_enable_render_encode_resolution_align4"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 112
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v14, "ve small window double thread decode"

    invoke-direct {v1, v4, v5, v3, v14}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v14, "ve_small_window_double_thread_decode"

    invoke-virtual {v0, v14, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 113
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    sget-object v14, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_SETTINGS:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    const-string v15, "camera enable previewing fallback"

    invoke-direct {v1, v4, v5, v14, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_camera_enable_previewing_fallback"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 114
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "enable background strategy"

    invoke-direct {v1, v4, v9, v14, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_enable_background_strategy"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 115
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "dmt take pin refactor"

    invoke-direct {v1, v4, v5, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_enable_pin_refactor"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 116
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "enable engine monitor report"

    invoke-direct {v1, v4, v5, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_enable_engine_monitor_report"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 117
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "MediaCodec dequeue video inputBuffer opt"

    invoke-direct {v1, v4, v5, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_enable_hwdecode_dequeue_inputbuffer_opt"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 118
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "Send sensor data to effect asynchronously."

    invoke-direct {v1, v4, v5, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_async_set_sensor_data"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 119
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "enable remux color info"

    invoke-direct {v1, v4, v9, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "enable_remux_color_info"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 120
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "remux video res"

    invoke-direct {v1, v6, v10, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "remux_video_res"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 121
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "compile report state"

    invoke-direct {v1, v6, v8, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_compile_report"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 122
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "compile timeout diagnosis"

    invoke-direct {v1, v4, v5, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_enable_compile_timeout_diagnosis"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 123
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v15, "enable audio refactor"

    invoke-direct {v1, v4, v5, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v15, "ve_enable_refactor_audio"

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 124
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v7

    const-string v7, "privacy_error_action"

    invoke-direct {v1, v6, v15, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 125
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v15, "privacy_error_check_interval"

    invoke-direct {v1, v6, v7, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 126
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0xbb8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v15, "privacy_error_check_threshold"

    invoke-direct {v1, v6, v7, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v15, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 127
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable 2d texture shot screen"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_oes_texture_shot_screen"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 128
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "hwdecode playback dropframe opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_hwdecode_playback_dropframe_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 129
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_editor_firstframe_delay"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 130
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_record_editor_firstframe_delay"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 131
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable encode bin gl context reuse"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_encode_bin_gl_context_reuse"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 132
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable editor compile gl context reuse"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_editor_compile_gl_context_reuse"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 133
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable upload virtual mem size"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_upload_virtual_mem_size"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 134
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable mpeg24 vp89 hwdecoder"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_mpeg24vp89_hwdecoder2"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 135
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "glFlush usage opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_glflush_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 136
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "vesdk_high_speed_change_opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 137
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_enable_p3_re_encode"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 138
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "imageAlgorithm Reuse and optForAmazing"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_imageAlgorithmReuseAndOptForAmazing"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 139
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0x2710

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v15, "byteVC1 10bit hardware encoder timeout params"

    invoke-direct {v1, v6, v7, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "byteVC1_10bit_hardware_encoder_timeout"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 140
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable low memory mode"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_memory_mode"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 141
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0x12c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v15, "low memory mode threshold"

    invoke-direct {v1, v6, v7, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_low_memory_threshold"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 142
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "compile support bytevc1 encode"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_compile_codec_type"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 143
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const v7, 0x7e9000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v15, "compile bytevc1 max pixel count"

    invoke-direct {v1, v6, v7, v3, v15}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_compile_hw_bytevc1_max_pixel_count"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 144
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable parallel decode and matting"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_parallelDecodeMatting"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 145
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable sys karaoke"

    invoke-direct {v1, v4, v5, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_sys_karaoke"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 146
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable common earback"

    invoke-direct {v1, v4, v9, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_common_earback"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 147
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable aaudio"

    invoke-direct {v1, v4, v9, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_aaduio"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 148
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable pip resolution opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_pip_resolution_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 149
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "config for hardware encode fallback to soft, DO NOT set NON-ZERO ON LINE"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_hardware_encode_fallback"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 150
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_asf_amount"

    invoke-direct {v1, v11, v12, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 151
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_asf_over_ratio"

    invoke-direct {v1, v11, v12, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 152
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v12, "ve_asf_gpu_power_level"

    invoke-direct {v1, v6, v7, v3, v12}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 153
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_asf_init_delay_frame_cnt"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 154
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_asf_process_delay_frame_cnt"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 155
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v12, "Duet audio delay optimize. 0 is no opt."

    invoke-direct {v1, v11, v7, v3, v12}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v12, "ve_duet_audio_delay_opt"

    invoke-virtual {v0, v12, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 156
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v12, "Duet audio delay mt optimize. 0 is no opt."

    invoke-direct {v1, v11, v7, v3, v12}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_duet_audio_delay_mt_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 157
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "opt audio delay when stop record"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_optimize_audio_delay"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 158
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "opt performance when open/close camera and stop record"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_vboost"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 159
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0x1f4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "VBoost timeout"

    invoke-direct {v1, v6, v7, v14, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_vboost_timeout"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 160
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable effect render without glreadpixels"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_effect_render_without_glreadpixels"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 161
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "smart trans detect for compile"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_smart_trans_detect"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 162
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "edit module force sw decode"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_force_edit_bytevc1_swdecode"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 163
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable global decoder pool"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_global_decoder_pool"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 164
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable concurrent preload for multi clips"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_concurrent_preload"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 165
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable editor context queue"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_editor_context_queue"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 166
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable global dispatch for decoder tasks"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_decoder_dispatch"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 167
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable decoder schedule for hw"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_decoder_schedule_opt_hw"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 168
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "description tevideoreader manager refactor"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_readermanager_refactor"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 169
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "description enable  device monitor opt"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_schdule_device_capability_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 170
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "compile module force sw decode"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_force_compile_bytevc1_swdecode"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 171
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "hw decode support real-time and operating-rate"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_hwdecode_support_rt_and_or"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 172
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve camera enable preview fake frame"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_camera_enable_preview_fake_frame"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 173
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve camera enable preview fake frame gaussian_blur"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_camera_enable_preview_fake_frame_gaussian_blur"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 174
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_camera_enable_preview_pure_color_background"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 175
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "ve_camera_preview_pure_color_background_rgba"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_camera_preview_pure_color_background_rgba"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 176
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "Titan switch off screen before stop preview"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_titan_off_screen_before_stop"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 177
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "mediacodec resource reasonable distribute"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_mediacodec_resource_reasonable_distribute"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 178
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "aec sample rate opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_aec_sample_rate_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 179
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable ffmpeg video timestamp monotonic"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "vesdk_ffmpeg_enable_video_timestamp_monotonic"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 180
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "Titan 1080p skip reencode"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_titan_release_block_time"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 181
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "Titan release block time"

    invoke-direct {v1, v6, v10, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_titan_release_block_time_real"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 182
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "shotscreen delay max frame"

    invoke-direct {v1, v6, v7, v14, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_shotscreen_delay_max_frame"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 183
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "shotscreen delay light frame num threshold"

    invoke-direct {v1, v6, v7, v14, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_shotscreen_delay_threshold"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 184
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "support audioReader preload and reuse"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_audio_reader_preload_reuse"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 185
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable cache timestamp"

    invoke-direct {v1, v4, v5, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_cache_timestamp"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 186
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "VEImage enable optimize quality"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_image_enable_optimize_quality"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 187
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "follow shot independent thread."

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_titan_follow_shot_independent_thread"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 188
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "seek and preload drop frame"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_seek_preload_drop_frame"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 189
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "amazing feature handle cache"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_amazing_feature_handle_cache"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 190
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "amazing feature handle cache"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_amazing_feature_handle_cache"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 191
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable image preload when display"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_image_preload"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 192
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "Ban mediacodec sps/pps loop & some opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_ban_hw_extra_data_loop"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 193
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "Set max count of titan`s frame buffer cache"

    invoke-direct {v1, v6, v7, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_titan_max_count_of_render_frame_buffer"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 194
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "Set max count of titan`s encode queue task"

    invoke-direct {v1, v6, v7, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_titan_max_count_of_encode_task"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 195
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "amazing feature handle preload"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_amazing_feature_handle_preload"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 196
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable titan audio graph refactor."

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_titan_audio_graph_refactor"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 197
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable bgm mic delay opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_bgm_mic_delay_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 198
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable luma detect ec"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_luma_detect_ec"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 199
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable luma detect"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_luma_detect"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 200
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "luma detect ec execute rate"

    invoke-direct {v1, v6, v7, v3, v11}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_luma_detect_ec_exe_rate"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 201
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "titan release gpu resource."

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_titan_release_gpu_resource"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 202
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable recorder native api"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_recorder_native_api"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 203
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable mediacodec output format align 16"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_anable_codec2_output_format_align_16"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 204
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable canvas blend reuse canvas handle"

    invoke-direct {v1, v4, v5, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_canvas_handle_reuse"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 205
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable render layer"

    invoke-direct {v1, v4, v5, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_render_layer"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 207
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable titan engine monitor"

    invoke-direct {v1, v4, v5, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_titan_engine_monitor"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 208
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable bytevc1 remux"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "vesdk_use_bytevcremux_in_publish"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 209
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable forward ongoingseek opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_forward_ongoingseek_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 210
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable video reader hw_overload fallback opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_video_reader_hw_overload_fallback_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 211
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable transform unit unify"

    invoke-direct {v1, v4, v5, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_edit_record_unit_unify"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 212
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable amazing unit unify"

    invoke-direct {v1, v4, v5, v14, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_amazing_unit_unify"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 213
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens asynchronous initialization"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_lens_edit_async_initialize"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 214
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens smart adjust"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_smart_adjust"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 215
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens disable hdr"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_edit_disable_hdr"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 216
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens disable denoise "

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_edit_disable_denoise"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 217
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens disable asf"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_edit_disable_asf"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 218
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens onekey record hdrv2"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_edit_onekey_record_hdrv2"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 219
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens async process"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_edit_async_process"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 220
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens preview async process"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_edit_preview_async_process"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 221
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens disable day scene"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_edit_disable_day_scene"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 222
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable lens disable night scene"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "enable_lens_edit_disable_night_scene"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 223
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "EnableImageTextureCache"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "EnableImageTextureCache"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 224
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable adaptive encode level"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_adaptive_encode_level"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 225
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable limit min encode fps"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_limit_min_encode_fps"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 226
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "encoder qp range"

    const-string v11, ""

    invoke-direct {v1, v2, v11, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_encoder_qp_range"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 227
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "encoder initial qp"

    invoke-direct {v1, v2, v11, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_encoder_initial_qp"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 228
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable hw decoder support rotate"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_hw_decoder_support_rotate"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 229
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable uri convert android q"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_uri_convert_android_q"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 230
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable uri convert android q cache"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_uri_convert_android_q_cache"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 231
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable titan thread pool opt."

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_titan_thread_pool_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 232
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "compile glfence, 0 - glfinish; 1 - glfence & wait on server; 2 - glfence & wait on client"

    invoke-direct {v1, v6, v8, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_compile_gl_fence_ab"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 233
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable preview quality opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "veabtest_enablePreviewQualityOpt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 234
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable upsampling opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "veabtest_enableUpSamplingOpt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 235
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable crossplat canvas opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "veabtest_enableCrossplatCanvasOpt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 236
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable crossplat canvas downscale opt"

    invoke-direct {v1, v4, v5, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "veabtest_enableCrossplatCanvasDownscaleOpt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 237
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable hw compile encoder optimization"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_enable_compile_hw_encoder_opt"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 238
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable hdr"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_onekey_process_hdr"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 239
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable denoise"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_onekey_process_denoise"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 240
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable asf"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_onekey_process_asf"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 241
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "enable hdr v2"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_onekey_process_hdr_v2"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 242
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "async process"

    invoke-direct {v1, v4, v9, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v7, "ve_onekey_process_async_process"

    invoke-virtual {v0, v7, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 243
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v7, "algo params"

    invoke-direct {v1, v2, v11, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_onekey_process_algo_params"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 244
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "cv detect frame"

    invoke-direct {v1, v6, v13, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_onekey_cv_detect_frame"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 245
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "disable day scene"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_onekey_disable_day_scene"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 246
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "disable night scene"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_onekey_disable_night_scene"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 247
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "the detect result of denoise"

    invoke-direct {v1, v6, v10, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_onekey_detect_denoise_result"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 248
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "the detect result of scene case"

    invoke-direct {v1, v6, v10, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_onekey_detect_scene_case_result"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 249
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "set recorder audio source type"

    move-object/from16 v7, v16

    invoke-direct {v1, v6, v7, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_audio_source_type"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 250
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "enable lv audio graph refactor"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_lv_audio_graph_refactor"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 251
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable img downsample calculate opt"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_img_downsample_calculate_opt"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 252
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve limit image texture size"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_limit_image_texture_size"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 253
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable sys image decoder"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_sys_image_decoder"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 254
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable img add black border"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_img_add_black_border"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 255
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable fastlanczos edit display"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_fastlanczos_edit_display"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 256
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable fastlanczos record display"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_fastlanczos_record_display"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 257
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable get result from bytebench"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_bytebench"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 258
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "enable model hot update"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_model_hot_update"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 259
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "hide ve metadata"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_compile_hide_ve_metadata"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 260
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "enable part remux optimization"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_part_remux"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 261
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable seek parallel decode"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_seek_parallel_decode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 262
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable seek backward opt"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_seek_backward_drop_opt"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 263
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable veimage gl nearst"

    invoke-direct {v1, v6, v8, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_veimage_gl_nearst"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 264
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable veimage lanczos resample"

    invoke-direct {v1, v6, v8, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_veimage_lanczos_resample"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 265
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable veimage publish dp"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_veimage_publish_dp"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 266
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable veimage p3display"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_veimage_p3display"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 267
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable veimage render cache"

    invoke-direct {v1, v4, v9, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_veimage_render_cache"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 268
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable veimage open contrast"

    invoke-direct {v1, v4, v9, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_veimage_open_contrast"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 269
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable matting optimize"

    invoke-direct {v1, v6, v8, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_matting_optimize"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 270
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable matting use hw"

    invoke-direct {v1, v6, v8, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_matting_use_hw"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 271
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "If titan decode video`s min side >= this size will use hardware decoder"

    invoke-direct {v1, v6, v10, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_titan_hw_dec_res_min_side"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 272
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable titan multi speed opt"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_titan_multi_speed_opt"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 273
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "enable audio track fallback solution"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_audio_track_play"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 274
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve report frequency"

    invoke-direct {v1, v6, v13, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_report_frequency"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 275
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "enable titan nv21 buffer render chain"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_titan_nv21_buffer_render_chain"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 276
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable titan opt lanczos for screen"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_titan_opt_lanczos_screen"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 277
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable titan opt lanczos for capture"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_titan_opt_lanczos_capture"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 278
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve set content adaptive coding mode"

    invoke-direct {v1, v6, v10, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_content_adaptive_coding_mode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 279
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable preview sharpness opt"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_preview_sharpness_opt"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 280
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable camera fps double check in image mode"

    invoke-direct {v1, v4, v9, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_camera_fps_double_check_in_image_mode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 281
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v7, "ve timeout for block engine stop"

    invoke-direct {v1, v6, v2, v3, v7}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_timeout_for_block_engine_stop"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 282
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable encode operating rate"

    invoke-direct {v1, v6, v8, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_encode_operating_rate"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 283
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable recorder lowmem async mode"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_recorder_lowmem_async_mode"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 284
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "ve enable pass effect when no effect filter"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_pass_effect_when_no_effect_filter"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 285
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const-string v2, "enable multi audio file track"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;-><init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V

    const-string v2, "ve_enable_multi_audio_file_track"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I

    .line 286
    invoke-direct {v0}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfigsFromEffect()V

    .line 287
    invoke-direct {v0}, Lcom/ss/android/vesdk/VEConfigCenter;->addConfigsFromCamera()V

    .line 288
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter;->initByteBench()V

    return-void
.end method

.method public static setEnablePreloadSo(Z)V
    .registers 1

    .line 439
    sput-boolean p0, Lcom/ss/android/vesdk/VEConfigCenter;->enablePreloadSo:Z

    return-void
.end method

.method private updateEffectConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)V
    .registers 6

    .line 733
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getABType()Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    move-result-object p0

    sget-object v0, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FOREFFECT:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    if-eq p0, v0, :cond_9

    goto :goto_24

    .line 737
    :cond_9
    sget-object p0, Lcom/ss/android/vesdk/VEConfigCenter$1;->$SwitchMap$com$ss$android$vesdk$VEConfigCenter$DataType:[I

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getDataType()Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3d

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_35

    if-eq p0, v1, :cond_2d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_25

    const/4 v1, 0x5

    if-eq p0, v1, :cond_25

    :goto_24
    return-void

    .line 744
    :cond_25
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setABConfigValue(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 748
    :cond_2d
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, v2}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setABConfigValue(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 752
    :cond_35
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setABConfigValue(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 739
    :cond_3d
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setABConfigValue(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public addConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)I
    .registers 4

    .line 468
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ConfigCenter has already contained "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEConfigCenter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x64

    return p0

    .line 473
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEConfigCenter;->setValue(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .registers 1

    .line 492
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public exportRecordToJson()Ljava/lang/String;
    .registers 5

    .line 793
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 794
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 796
    :try_start_1b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getABType()Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    move-result-object v2

    sget-object v3, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FOREFFECT:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 797
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "record"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 798
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "use_open_gl_three"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 799
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "frame_rate_strategy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 800
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "video_duration_opt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 801
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ve_enable_oes_texture_shot_screen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 802
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ve_enable_wide_fov_for_samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 803
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ve_enable_stop_preview_optimize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 804
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ve_enable_refactor_audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_ae

    :catch_ac
    move-exception v1

    goto :goto_c3

    .line 805
    :cond_ae
    :goto_ae
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    # getter for: Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;
    invoke-static {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->access$100(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_c1} :catch_ac

    goto/16 :goto_f

    .line 808
    :goto_c3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f

    .line 812
    :cond_c8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public exportToJson()Ljava/lang/String;
    .registers 6

    .line 766
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 767
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 769
    :try_start_1b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 770
    const-string v3, "key"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 771
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 772
    const-string v3, "description"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    # getter for: Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->description:Ljava/lang/String;
    invoke-static {v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->access$300(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 773
    const-string v3, "dataType"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    # getter for: Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->dataType:Lcom/ss/android/vesdk/VEConfigCenter$DataType;
    invoke-static {v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->access$000(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string v3, "value"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    # getter for: Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->access$100(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    const-string v3, "configType"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    # getter for: Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->configType:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;
    invoke-static {v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->access$400(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6e

    :catch_6c
    move-exception p0

    goto :goto_72

    .line 777
    :cond_6e
    :goto_6e
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_71} :catch_6c

    goto :goto_f

    .line 779
    :goto_72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Export "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, stack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEConfigCenter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string p0, ""

    return-object p0

    .line 785
    :cond_a0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfigs()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;",
            ">;"
        }
    .end annotation

    .line 503
    sget-boolean v0, Lcom/ss/android/vesdk/VEConfigCenter;->enablePreloadSo:Z

    if-eqz v0, :cond_b

    .line 504
    const-string v0, "VEConfigCenter"

    const-string v1, "Do preload libs!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    return-object p0
.end method

.method public getValue(Ljava/lang/String;F)F
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    .line 602
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    const-string v0, "ve_enable_bytebench"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 603
    invoke-static {}, Lcom/benchmark/runtime/BTCStrategyManagement;->getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;

    move-result-object p0

    sget v0, Lcom/ss/android/vesdk/VEConfigCenter;->APPID:I

    invoke-virtual {p0, v0}, Lcom/benchmark/runtime/BTCStrategyManagement;->getByteBenchStrategy(I)Lcom/benchmark/port/IByteBenchStrategy;

    :cond_27
    if-eqz p1, :cond_3a

    .line 608
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 609
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_3a
    return p2
.end method

.method public getValue(Ljava/lang/String;I)I
    .registers 4

    .line 556
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    .line 558
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    const-string v0, "ve_enable_bytebench"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 559
    invoke-static {}, Lcom/benchmark/runtime/BTCStrategyManagement;->getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;

    move-result-object p0

    sget v0, Lcom/ss/android/vesdk/VEConfigCenter;->APPID:I

    invoke-virtual {p0, v0}, Lcom/benchmark/runtime/BTCStrategyManagement;->getByteBenchStrategy(I)Lcom/benchmark/port/IByteBenchStrategy;

    :cond_27
    if-eqz p1, :cond_3a

    .line 564
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 565
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3a
    return p2
.end method

.method public getValue(Ljava/lang/String;J)J
    .registers 5

    .line 578
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    .line 580
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    const-string v0, "ve_enable_bytebench"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 581
    invoke-static {}, Lcom/benchmark/runtime/BTCStrategyManagement;->getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;

    move-result-object p0

    sget v0, Lcom/ss/android/vesdk/VEConfigCenter;->APPID:I

    invoke-virtual {p0, v0}, Lcom/benchmark/runtime/BTCStrategyManagement;->getByteBenchStrategy(I)Lcom/benchmark/port/IByteBenchStrategy;

    :cond_27
    if-eqz p1, :cond_3a

    .line 586
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 587
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_3a
    return-wide p2
.end method

.method public getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    .line 518
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    const-string v0, "ve_enable_bytebench"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 519
    invoke-static {}, Lcom/benchmark/runtime/BTCStrategyManagement;->getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;

    move-result-object p0

    sget v0, Lcom/ss/android/vesdk/VEConfigCenter;->APPID:I

    invoke-virtual {p0, v0}, Lcom/benchmark/runtime/BTCStrategyManagement;->getByteBenchStrategy(I)Lcom/benchmark/port/IByteBenchStrategy;

    :cond_27
    return-object p1
.end method

.method public getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .registers 4

    .line 622
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    .line 624
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    const-string v0, "ve_enable_bytebench"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 625
    invoke-static {}, Lcom/benchmark/runtime/BTCStrategyManagement;->getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;

    move-result-object p0

    sget v0, Lcom/ss/android/vesdk/VEConfigCenter;->APPID:I

    invoke-virtual {p0, v0}, Lcom/benchmark/runtime/BTCStrategyManagement;->getByteBenchStrategy(I)Lcom/benchmark/port/IByteBenchStrategy;

    :cond_27
    if-eqz p1, :cond_36

    .line 630
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 631
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 634
    :cond_36
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 645
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    .line 647
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    const-string v0, "ve_enable_bytebench"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 648
    invoke-static {}, Lcom/benchmark/runtime/BTCStrategyManagement;->getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;

    move-result-object p0

    sget v0, Lcom/ss/android/vesdk/VEConfigCenter;->APPID:I

    invoke-virtual {p0, v0}, Lcom/benchmark/runtime/BTCStrategyManagement;->getByteBenchStrategy(I)Lcom/benchmark/port/IByteBenchStrategy;

    :cond_27
    if-eqz p1, :cond_36

    .line 653
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 654
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_36
    return-object p2
.end method

.method public initByteBench()V
    .registers 4

    .line 295
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->mIsInitByteBench:Z

    if-eqz v0, :cond_5

    return-void

    .line 298
    :cond_5
    sget-object v0, Lcom/ss/android/vesdk/VEConfigCenter;->sByteBenchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_8
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->mIsInitByteBench:Z

    if-eqz p0, :cond_10

    .line 300
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_33

    .line 302
    :cond_10
    const-string p0, "VESDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init ByteBench: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/ss/android/vesdk/VEConfigCenter;->APPID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/benchmark/runtime/BTCStrategyManagement;->getInstance()Lcom/benchmark/runtime/BTCStrategyManagement;

    move-result-object p0

    sget v1, Lcom/ss/android/vesdk/VEConfigCenter;->APPID:I

    invoke-virtual {p0, v1}, Lcom/benchmark/runtime/BTCStrategyManagement;->getByteBenchStrategy(I)Lcom/benchmark/port/IByteBenchStrategy;

    .line 305
    monitor-exit v0

    return-void

    .line 314
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_e

    throw p0
.end method

.method public removeConfig(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 484
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;
    .registers 5

    .line 672
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    .line 673
    const-string v0, "VEConfigCenter"

    if-nez p0, :cond_21

    .line 674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Previous ValuePkt is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 676
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ==> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public syncConfigToNative()I
    .registers 5

    .line 721
    const-string v0, "VEConfigCenter"

    const-string v1, "syncConfigToNative..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 723
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    # getter for: Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->abType:Lcom/ss/android/vesdk/VEConfigCenter$ABType;
    invoke-static {v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->access$200(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    move-result-object v2

    sget-object v3, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FOREFFECT:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    if-ne v2, v3, :cond_3b

    .line 724
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-direct {p0, v2, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->updateEffectConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)V

    goto :goto_11

    .line 725
    :cond_3b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    # getter for: Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->abType:Lcom/ss/android/vesdk/VEConfigCenter$ABType;
    invoke-static {v2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->access$200(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    move-result-object v2

    sget-object v3, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FORCAMERA:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    if-eq v2, v3, :cond_11

    .line 726
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/runtime/TEConfigCenter;->setConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)V

    goto :goto_11

    :cond_59
    const/4 p0, 0x0

    return p0
.end method

.method public updateValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 696
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter;->sConfigs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    if-nez p0, :cond_22

    .line 698
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Doesn\'t contain the key: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEConfigCenter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 702
    :cond_22
    # getter for: Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->access$100(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Ljava/lang/Object;

    move-result-object p1

    .line 703
    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->updateValue(Ljava/lang/Object;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    return-object p1
.end method
