.class public final Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEAudioEncodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private externalSettingsJsonStr:Ljava/lang/String;

.field private mBps:I

.field private mChannelCount:I

.field private mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

.field private mHwEnc:Z

.field private mSampleRate:I

.field private mScene:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    sget-object v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_WAV:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->externalSettingsJsonStr:Ljava/lang/String;

    .line 290
    sget-object v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;->COMPILE:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mScene:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    const v0, 0xac44

    .line 297
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mSampleRate:I

    const/high16 v0, 0x20000

    .line 304
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mBps:I

    const/4 v0, 0x2

    .line 311
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mChannelCount:I

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mHwEnc:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;
    .registers 1

    .line 287
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I
    .registers 1

    .line 287
    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mSampleRate:I

    return p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I
    .registers 1

    .line 287
    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mBps:I

    return p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I
    .registers 1

    .line 287
    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mChannelCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)Z
    .registers 1

    .line 287
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mHwEnc:Z

    return p0
.end method

.method private getCodecFromName(Ljava/lang/String;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;
    .registers 4

    .line 432
    sget-object p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_AAC:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    if-nez p1, :cond_5

    goto :goto_2f

    .line 437
    :cond_5
    const-string v0, "AAC"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2f

    .line 439
    :cond_12
    const-string v0, "PCM"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 440
    sget-object p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_PCM:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    return-object p0

    .line 441
    :cond_21
    const-string v0, "WAV"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 442
    sget-object p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_WAV:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    :cond_2f
    :goto_2f
    return-object p0
.end method

.method private parseExternalSetting()V
    .registers 4

    .line 415
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->externalSettingsJsonStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mScene:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    sget-object v2, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;->COMPILE:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 418
    const-string v1, "compile"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_3b

    .line 419
    :cond_18
    iget-object v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mScene:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    sget-object v2, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;->RECORD:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 420
    const-string v1, "record"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_3b

    .line 421
    :cond_29
    iget-object v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mScene:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    sget-object v2, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;->COMPILE_WATERMARK:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 422
    const-string v1, "watermark_compile"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 424
    :goto_3b
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->parseJsonSettings(Lorg/json/JSONObject;)V
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private parseJsonSettings(Lorg/json/JSONObject;)V
    .registers 3

    .line 450
    :try_start_0
    const-string v0, "mCodec"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->getCodecFromName(Ljava/lang/String;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    .line 452
    const-string v0, "mSampleRate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mSampleRate:I

    .line 453
    const-string v0, "mBps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mBps:I

    .line 454
    const-string v0, "mChannelCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mChannelCount:I

    .line 455
    const-string v0, "mHwEnc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mHwEnc:Z
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p0

    .line 457
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public Build()Lcom/ss/android/vesdk/VEAudioEncodeSettings;
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->externalSettingsJsonStr:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 469
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->parseExternalSetting()V

    .line 471
    :cond_7
    new-instance v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;-><init>(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;Lcom/ss/android/vesdk/VEAudioEncodeSettings$1;)V

    return-object v0
.end method

.method public setBps(I)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .registers 2

    .line 350
    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mBps:I

    return-object p0
.end method

.method public setChannelCount(I)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .registers 2

    .line 361
    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mChannelCount:I

    return-object p0
.end method

.method public setCodec(Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    return-object p0
.end method

.method public setExternalSettings(Ljava/lang/String;Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .registers 3

    .line 408
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->externalSettingsJsonStr:Ljava/lang/String;

    .line 409
    iput-object p2, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mScene:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;

    return-object p0
.end method

.method public setHwEnc(Z)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .registers 2

    .line 373
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mHwEnc:Z

    return-object p0
.end method

.method public setSampleRate(I)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .registers 2

    .line 339
    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mSampleRate:I

    return-object p0
.end method
