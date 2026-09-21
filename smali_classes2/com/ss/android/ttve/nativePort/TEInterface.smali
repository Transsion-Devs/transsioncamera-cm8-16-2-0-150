.class public final Lcom/ss/android/ttve/nativePort/TEInterface;
.super Lcom/ss/android/ttve/nativePort/TENativeServiceBase;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final OPTION_UPDATE_ANYTIME:I = 0x1

.field private static final OPTION_UPDATE_BEFORE_PREPARE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TEInterface"

.field public static m_IsConfigedAB:Z


# instance fields
.field private mHostTrackIndex:I

.field private mNative:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    const/4 v0, 0x0

    .line 86
    sput-boolean v0, Lcom/ss/android/ttve/nativePort/TEInterface;->m_IsConfigedAB:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 97
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    .line 98
    sget-boolean v0, Lcom/ss/android/ttve/nativePort/TEInterface;->m_IsConfigedAB:Z

    if-nez v0, :cond_14

    .line 99
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->configABforEditor()V

    const/4 p0, 0x1

    .line 100
    sput-boolean p0, Lcom/ss/android/ttve/nativePort/TEInterface;->m_IsConfigedAB:Z

    :cond_14
    return-void
.end method

.method public static audioExtend(Ljava/lang/String;FFF)Ljava/lang/String;
    .registers 4

    .line 950
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAudioExtend(Ljava/lang/String;FFF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private configABforEditor()V
    .registers 6

    .line 106
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "mv_use_amazing_engine"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 107
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_29

    .line 108
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 110
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableEffectAmazingMV(Z)I

    .line 114
    :cond_29
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "vesdk_max_cache_count"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 115
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_52

    .line 116
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_52

    .line 118
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->configMaxCacheFrameCount(I)I

    .line 122
    :cond_52
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "vesdk_seek_predict_opt"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 123
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7b

    .line 124
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 126
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableSeekPredictOpt(Z)I

    .line 130
    :cond_7b
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "create_by_codec_name"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_a4

    .line 131
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a4

    .line 132
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 134
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableCreateDecoderByName(Z)I

    .line 138
    :cond_a4
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "enable_android_hdr2sdr_support"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    .line 139
    const-string v0, "TEInterface"

    if-eqz p0, :cond_e3

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e3

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_e3

    .line 140
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAndroidHdr2SdrSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_e3

    .line 143
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableAndroidHdr2SDRSupport(Z)I

    .line 149
    :cond_e3
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_camera_enable_preview_pure_color_background"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_15e

    .line 150
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15e

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_15e

    .line 151
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePreviewPureColorBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_15e

    .line 154
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v3, "ve_camera_preview_pure_color_background_rgba"

    invoke-virtual {v1, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    if-eqz v1, :cond_15e

    .line 155
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15e

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_15e

    .line 156
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", rgbaValue = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enablePreviewPureColorBackground(ZI)I

    .line 164
    :cond_15e
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "enable_android_hdr_preview_support"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_187

    .line 165
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_187

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_187

    .line 166
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_187

    .line 174
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableAndroidHdr2SDRSupport(Z)I

    .line 179
    :cond_187
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_force_edit_bytevc1_swdecode"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_1c4

    .line 180
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c4

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1c4

    .line 181
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceEditBytevc1SWdecode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1c4

    .line 184
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->forceEditBytevc1SWdecode(Z)I

    .line 189
    :cond_1c4
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_force_compile_bytevc1_swdecode"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_201

    .line 190
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_201

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_201

    .line 191
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceCompileBytevc1SWdecode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_201

    .line 194
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->forceCompileBytevc1SWdecode(Z)I

    .line 199
    :cond_201
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "vesdk_audiomix_replace"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_22a

    .line 200
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22a

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_22a

    .line 201
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_22a

    .line 203
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableNewAudioMixer(Z)I

    .line 207
    :cond_22a
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_color_space_for_2020"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_253

    .line 208
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_253

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_253

    .line 209
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_253

    .line 211
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableColorSpace2020(Z)I

    .line 215
    :cond_253
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_bingo_refactor"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_27f

    .line 216
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_27f

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_27f

    .line 217
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_27f

    .line 219
    sput-boolean v1, Lcom/ss/android/vesdk/VERuntimeConfig;->sBingoRefactor:Z

    .line 220
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableBingoRefactor(Z)I

    .line 224
    :cond_27f
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "vesdk_audio_hw_encoder"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_2a8

    .line 225
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2a8

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2a8

    .line 226
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2a8

    .line 228
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableAudioHwEncoder(Z)I

    .line 232
    :cond_2a8
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "crossplat_glbase_fbo"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_2e5

    .line 233
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2e5

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2e5

    .line 234
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CROSSPLAT_GLBASE_FBO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2e5

    .line 237
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableCrossplatformGLBaseFBO(Z)I

    .line 241
    :cond_2e5
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "enable_render_lib"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_322

    .line 242
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_322

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_322

    .line 243
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_ENABLE_RENDER_LIB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_322

    .line 246
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableRenderLib(Z)I

    .line 250
    :cond_322
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "renderlib_fbo_opt"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_35f

    .line 251
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_35f

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_35f

    .line 252
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_RENDER_LIB_FBO_OPT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_35f

    .line 255
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableRenderLibFBOOpt(Z)I

    .line 259
    :cond_35f
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "vesdk_use_agfxcontext"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_39c

    .line 260
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_39c

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_39c

    .line 261
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_ENABLE_AGFX_CTX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_39c

    .line 264
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableAGFXCtx(Z)I

    .line 268
    :cond_39c
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "vesdk_enable_reader_refactor"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_3c5

    .line 269
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3c5

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3c5

    .line 270
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3c5

    .line 272
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReaderRefactor(Z)I

    .line 276
    :cond_3c5
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v3, "ve_enable_concurrent_preload"

    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_3ec

    .line 277
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3ec

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3ec

    .line 278
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 279
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableConcurrentPreloadOpt(I)I

    .line 282
    :cond_3ec
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v3, "ve_enable_editor_context_queue"

    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_413

    .line 283
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_413

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_413

    .line 284
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 285
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableEditorContextQueue(I)I

    .line 288
    :cond_413
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v3, "ve_enable_decoder_dispatch"

    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_43a

    .line 289
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_43a

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_43a

    .line 290
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 291
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableDecoderDispatch(I)I

    .line 294
    :cond_43a
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v3, "ve_enable_decoder_schedule_opt_hw"

    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_473

    .line 295
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_473

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_473

    .line 296
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 297
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_473

    .line 298
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->updateValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReaderRefactor(Z)I

    .line 300
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableDecoderResourceScheduleOptHw(I)I

    .line 304
    :cond_473
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_enable_readermanager_refactor"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_4a1

    .line 305
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a1

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4a1

    .line 306
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4a1

    .line 308
    const-string p0, "enable ReaderManager refactortrue"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReaderManagerRefactor(Z)I

    .line 313
    :cond_4a1
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_enable_schdule_device_capability_opt"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_4d3

    .line 314
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4d3

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4d3

    .line 315
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 316
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4d3

    .line 317
    const-string v2, "enable_device_capability_opttrue"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableCapabilityOpt(I)I

    .line 322
    :cond_4d3
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_enable_audio_gbu_refactor"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    .line 323
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableAudioGBU(Z)I

    .line 325
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v2, "ve_enable_render_encode_resolution_align4"

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_511

    .line 326
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_511

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_511

    .line 327
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_511

    .line 329
    const-string p0, "enableRenderEncodeAlign4: true"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableOutResolutionAlign4(Z)I

    const/4 p0, 0x4

    .line 331
    invoke-static {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setEncodeResolutionAlign(I)V

    .line 335
    :cond_511
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_pin_refactor"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_53a

    .line 336
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_53a

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_53a

    .line 337
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_53a

    .line 339
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enablePinRefactor(Z)I

    .line 343
    :cond_53a
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_hwdecode_playback_dropframe_opt"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_577

    .line 344
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_577

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_577

    .line 345
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hwdecodePlaybackDropFrameOpt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_577

    .line 348
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableOptPlayBackDropFrame(Z)I

    .line 352
    :cond_577
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_mpeg24vp89_hwdecoder2"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_5b8

    .line 353
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5b8

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5b8

    .line 354
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableMpeg24VP89HWDecoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_5b8

    .line 357
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableHDMpeg24VP89HWDecoder(Z)I

    .line 361
    :cond_5b8
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_glflush_opt"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_5f5

    .line 362
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5f5

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5f5

    .line 363
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glFlushOpt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_5f5

    .line 366
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableOptGlFlush(Z)I

    .line 370
    :cond_5f5
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "vesdk_high_speed_change_opt"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_632

    .line 371
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_632

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_632

    .line 372
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highSpeedChangeOpt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_632

    .line 375
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableHighSpeed(Z)I

    .line 379
    :cond_632
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_p3_re_encode"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_66f

    .line 380
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_66f

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_66f

    .line 381
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p3ReEncodeOpt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_66f

    .line 384
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableDisplayP3ReEncode(Z)I

    .line 388
    :cond_66f
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_imageAlgorithmReuseAndOptForAmazing"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_6ac

    .line 389
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6ac

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6ac

    .line 390
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageAlgorithmReuseAndOptForAmazing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6ac

    .line 393
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableImageAlgorithmReuseAndOptForAmazing(Z)I

    .line 397
    :cond_6ac
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_parallelDecodeMatting"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_6e9

    .line 398
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6e9

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6e9

    .line 399
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parall Encode Matting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6e9

    .line 402
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableParallDecodeMatting(Z)I

    .line 406
    :cond_6e9
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_pip_resolution_opt"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_726

    .line 407
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_726

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_726

    .line 408
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pip resolution opt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_726

    .line 411
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enablePipResolutionOpt(Z)I

    .line 415
    :cond_726
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_hardware_encode_fallback"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_766

    .line 416
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_766

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_766

    .line 417
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 418
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_766

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTENTION!!! TESTING, HARDWARE ENCODE WILL FALLBACK TO SOFT, MODE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/ss/android/vesdk/VERuntimeConfig;->sHardWareEncFallBack:I

    .line 424
    :cond_766
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_effect_render_without_glreadpixels"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_7a3

    .line 425
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7a3

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_7a3

    .line 426
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effect render without glreadpixels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_7a3

    .line 429
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableEffectRenderWithoutGlreadpixels(Z)I

    .line 433
    :cond_7a3
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_smart_trans_detect"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_7e0

    .line 434
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7e0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_7e0

    .line 435
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smart trans detect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_7e0

    .line 438
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableSmartTransDetect(Z)I

    .line 442
    :cond_7e0
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_part_remux"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_807

    .line 443
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_807

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_807

    .line 444
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 445
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnablePartRemux(Z)I

    .line 448
    :cond_807
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v1, "ve_enable_multi_audio_file_track"

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_844

    .line 449
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_844

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_844

    .line 450
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable multi audio file track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_844

    .line 453
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableMultiAudioFileTrack(Z)I

    :cond_844
    return-void
.end method

.method public static configMaxCacheFrameCount(I)I
    .registers 1

    .line 1420
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeConfigMaxCacheFrameCount(I)I

    move-result p0

    return p0
.end method

.method public static createEngine()Lcom/ss/android/ttve/nativePort/TEInterface;
    .registers 1

    const/4 v0, 0x0

    .line 469
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->createEngine(Lcom/ss/android/vesdk/VEUserConfig;)Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object v0

    return-object v0
.end method

.method public static createEngine(J)Lcom/ss/android/ttve/nativePort/TEInterface;
    .registers 5

    .line 523
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;-><init>()V

    .line 524
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VERuntime;->isGLES3Enabled()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x3

    goto :goto_12

    :cond_11
    const/4 v1, 0x2

    :goto_12
    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/TEGLGlobalContext;->nativeSetGLVersion(I)V

    .line 525
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VERuntime;->getMaxRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/runtime/VERuntime;->getMaxRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-static {v1, v2}, Lcom/ss/android/ttve/nativePort/TEGLGlobalContext;->nativeSetMaxRenderSize(II)V

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_34

    return-object v2

    .line 531
    :cond_34
    iput-wide p0, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    .line 532
    invoke-direct {v0, p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeResetCallback(J)V

    .line 533
    const-string p0, "vesdk_event_editor_init"

    const-string p1, "behavior"

    invoke-static {p0, v2, p1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createEngine(Lcom/ss/android/vesdk/VEUserConfig;)Lcom/ss/android/ttve/nativePort/TEInterface;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6e

    .line 481
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEUserConfig;->getConfigItems()[Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_6e

    .line 483
    new-array v2, v1, [I

    .line 484
    new-array v3, v1, [Ljava/lang/String;

    .line 485
    new-array v1, v1, [I

    const/4 v4, 0x0

    .line 487
    :goto_11
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEUserConfig;->getConfigItems()[Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_71

    .line 488
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEUserConfig;->getConfigItems()[Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    move-result-object v5

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->id:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 489
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEUserConfig;->getConfigItems()[Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->getDataType()Lcom/ss/android/vesdk/VEUserConfig$DataType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEUserConfig$DataType;->value()I

    move-result v5

    aput v5, v1, v4

    if-nez v5, :cond_4b

    .line 491
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEUserConfig;->getConfigItems()[Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 492
    aput v5, v2, v4

    goto :goto_6b

    :cond_4b
    const/4 v6, 0x1

    if-ne v5, v6, :cond_61

    .line 494
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEUserConfig;->getConfigItems()[Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    goto :goto_6b

    .line 496
    :cond_61
    const-string v5, "setUserConfig"

    const-string v6, "illegal type"

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 497
    aput v5, v2, v4

    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_6e
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 502
    :cond_71
    new-instance p0, Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;-><init>()V

    .line 503
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/vesdk/runtime/VERuntime;->isGLES3Enabled()Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 v4, 0x3

    goto :goto_83

    :cond_82
    const/4 v4, 0x2

    :goto_83
    invoke-static {v4}, Lcom/ss/android/ttve/nativePort/TEGLGlobalContext;->nativeSetGLVersion(I)V

    .line 504
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/vesdk/runtime/VERuntime;->getMaxRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/vesdk/runtime/VERuntime;->getMaxRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-static {v4, v5}, Lcom/ss/android/ttve/nativePort/TEGLGlobalContext;->nativeSetMaxRenderSize(II)V

    .line 506
    invoke-direct {p0, v3, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCreateEngine([Ljava/lang/String;[I[I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_a8

    return-object v0

    .line 511
    :cond_a8
    iput-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    .line 512
    const-string v1, "vesdk_event_editor_init"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object p0
.end method

.method public static detectAudioLoudness([Ljava/lang/String;[I[I)[Lcom/ss/android/vesdk/LoudnessDetectResult;
    .registers 3

    .line 1351
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDetectAudioLoudness([Ljava/lang/String;[I[I)[Lcom/ss/android/vesdk/LoudnessDetectResult;

    move-result-object p0

    return-object p0
.end method

.method public static enableAGFXCtx(Z)I
    .registers 1

    .line 1486
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableAGFXCtx(Z)I

    move-result p0

    return p0
.end method

.method public static enableAndroidHdr2SDRSupport(Z)I
    .registers 1

    .line 1432
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableAndroidHdr2SDRSupport(Z)I

    move-result p0

    return p0
.end method

.method public static enableAndroidHdrPreviewSupport(Z)I
    .registers 1

    .line 1441
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableAndroidHdrPreviewSupport(Z)I

    move-result p0

    return p0
.end method

.method public static enableAudioGBU(Z)I
    .registers 1

    .line 1506
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableAudioGBU(Z)I

    move-result p0

    return p0
.end method

.method public static enableAudioHwEncoder(Z)I
    .registers 1

    .line 1461
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAudioHwEncoder(Z)I

    move-result p0

    return p0
.end method

.method public static enableBingoRefactor(Z)I
    .registers 1

    .line 1457
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeBingoRefactor(Z)I

    move-result p0

    return p0
.end method

.method public static enableCapabilityOpt(I)I
    .registers 1

    .line 1481
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableDeviceCapabilityOpt(I)I

    move-result p0

    return p0
.end method

.method public static enableColorSpace2020(Z)I
    .registers 1

    .line 1453
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableColorSpace2020(Z)I

    move-result p0

    return p0
.end method

.method public static enableCreateDecoderByName(Z)I
    .registers 1

    .line 1428
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableCreateDecoderByName(Z)I

    move-result p0

    return p0
.end method

.method public static enableCrossplatformGLBaseFBO(Z)I
    .registers 1

    .line 1502
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableCrossplatformGLBaseFBO(Z)I

    move-result p0

    return p0
.end method

.method public static enableDecoderResourceScheduleOptHw(I)I
    .registers 1

    .line 1494
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableDecoderResourceScheduleOptHw(I)I

    move-result p0

    return p0
.end method

.method public static enableDisplayP3ReEncode(Z)I
    .registers 1

    .line 1590
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableDisplayP3ReEncode(Z)I

    move-result p0

    return p0
.end method

.method public static enableDisplayP3Render(Z)I
    .registers 1

    .line 1594
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableDisplayP3Render(Z)I

    move-result p0

    return p0
.end method

.method public static enableEffectAmazingMV(Z)I
    .registers 1

    .line 1416
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableEffectAmazingMV(Z)I

    move-result p0

    return p0
.end method

.method public static enableEffectRenderWithoutGlreadpixels(Z)I
    .registers 1

    .line 1542
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableEffectRenderWithoutGlreadpixels(Z)I

    move-result p0

    return p0
.end method

.method public static enableFileInfoCache(Z)I
    .registers 1

    .line 1510
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableFileInfoCache(Z)I

    move-result p0

    return p0
.end method

.method public static enableFirstFrameOpt(Z)I
    .registers 1

    .line 1582
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableFirstFrameOpt(Z)I

    move-result p0

    return p0
.end method

.method public static enableHighSpeed(Z)I
    .registers 1

    .line 1412
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableHighSpeed(Z)I

    move-result p0

    return p0
.end method

.method public static enableImageAlgorithmReuseAndOptForAmazing(Z)I
    .registers 1

    .line 1530
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableImageAlgorithmReuseAndOptForAmazing(Z)I

    move-result p0

    return p0
.end method

.method public static enableMultiAudioFileTrack(Z)I
    .registers 1

    .line 1554
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableMultiAudioFileTrack(Z)I

    move-result p0

    return p0
.end method

.method public static enableMultiThreadDecode(Z)I
    .registers 1

    .line 1514
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableMultiThreadDecode(Z)I

    move-result p0

    return p0
.end method

.method public static enableNewAudioMixer(Z)I
    .registers 1

    .line 1465
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableNewAudioMixer(Z)I

    move-result p0

    return p0
.end method

.method public static enableOptGlFlush(Z)I
    .registers 1

    .line 1526
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableOptGLFlush(Z)I

    move-result p0

    return p0
.end method

.method public static enableOptPlayBackDropFrame(Z)I
    .registers 1

    .line 1522
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableOptPlayBackDropFrame(Z)I

    move-result p0

    return p0
.end method

.method public static enableOutResolutionAlign4(Z)I
    .registers 1

    .line 1550
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableOutResolutionAlign4(Z)I

    move-result p0

    return p0
.end method

.method public static enableParallDecodeMatting(Z)I
    .registers 1

    .line 1534
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableParallDecodeMatting(Z)I

    move-result p0

    return p0
.end method

.method public static enablePinRefactor(Z)I
    .registers 1

    .line 1498
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnablePinRefactor(Z)I

    move-result p0

    return p0
.end method

.method public static enablePipResolutionOpt(Z)I
    .registers 1

    .line 1538
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnablePipResolutionOpt(Z)I

    move-result p0

    return p0
.end method

.method public static enablePreviewPureColorBackground(ZI)I
    .registers 2

    .line 1436
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnablePreviewPureColorBackground(ZI)I

    move-result p0

    return p0
.end method

.method public static enablePreviewSwDecodeCompileHwDecode(Z)I
    .registers 1

    .line 1578
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnablePreviewSwDecodeCompileHwDecode(Z)I

    move-result p0

    return p0
.end method

.method public static enableReaderManagerRefactor(Z)I
    .registers 1

    .line 1477
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableReaderManagerRefactor(Z)I

    move-result p0

    return p0
.end method

.method public static enableReaderRefactor(Z)I
    .registers 1

    .line 1490
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableReaderRefactor(Z)I

    move-result p0

    return p0
.end method

.method public static enableRenderLib(Z)I
    .registers 1

    .line 1469
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableRenderLib(Z)I

    move-result p0

    return p0
.end method

.method public static enableRenderLibFBOOpt(Z)I
    .registers 1

    .line 1473
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableRenderLibFBOOpt(Z)I

    move-result p0

    return p0
.end method

.method public static enableSeekAndPreloadOpt(Z)I
    .registers 1

    .line 1518
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableSeekAndPreloadOpt(Z)I

    move-result p0

    return p0
.end method

.method public static enableSeekPredictOpt(Z)I
    .registers 1

    .line 1424
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSeekPredictOpt(Z)I

    move-result p0

    return p0
.end method

.method public static enableSmartTransDetect(Z)I
    .registers 1

    .line 1546
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableSmartTransDetect(Z)I

    move-result p0

    return p0
.end method

.method public static forceCompileBytevc1SWdecode(Z)I
    .registers 1

    .line 1449
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeForceCompileBytevc1SWdecode(Z)I

    move-result p0

    return p0
.end method

.method public static forceEditBytevc1SWdecode(Z)I
    .registers 1

    .line 1445
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeForceEditBytevc1SWdecode(Z)I

    move-result p0

    return p0
.end method

.method public static getMVInfoStatic(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 3082
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetMVInfoStatic(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private native nativeAddAudioTrack(JLjava/lang/String;IIIIZ)I
.end method

.method private native nativeAddAudioTrack2(JLjava/lang/String;IIIIZII)I
.end method

.method private native nativeAddAudioTrackForClips(J[Ljava/lang/String;[I[I[F)I
.end method

.method private native nativeAddAudioTrackForTrack(JLjava/lang/String;IIIIZZ)I
.end method

.method private native nativeAddAudioTrackWithNeedPrepare(JLjava/lang/String;Ljava/lang/String;IIIIZZ)I
.end method

.method private native nativeAddAudioTrackWithNeedPrepareForTrack(JLjava/lang/String;Ljava/lang/String;IIIIZZZ)I
.end method

.method private native nativeAddAudioTrackWithStruct(JLcom/ss/android/vesdk/clipparam/VECommonClipParam;Z)I
.end method

.method private native nativeAddClipAuxiliaryParam(JII[Lcom/ss/android/vesdk/clipparam/VEClipAuxiliaryParam;)I
.end method

.method private native nativeAddFileInfoCache(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeAddFilters(J[I[Ljava/lang/String;[I[I[I[I[I)[I
.end method

.method private native nativeAddMetaData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeAddSubTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDII)I
.end method

.method private native nativeAddSubVideoTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[II)I
.end method

.method private native nativeAdjustFilterInOut(JIII)I
.end method

.method private native nativeAppendComposerNodes(J[Ljava/lang/String;)I
.end method

.method private static native nativeAudioExtend(Ljava/lang/String;FFF)Ljava/lang/String;
.end method

.method private static native nativeAudioHwEncoder(Z)I
.end method

.method private native nativeBeginAudioExtendToFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)I
.end method

.method private static native nativeBingoRefactor(Z)I
.end method

.method private native nativeCancelAudioExtendToFile(J)I
.end method

.method private native nativeCancelGetImages(J)I
.end method

.method private native nativeChangeResWithEffect(J[Z[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Ljava/lang/String;[Ljava/lang/String;[I[I[F[I)I
.end method

.method private native nativeChangeTransitonAt(JILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I
.end method

.method private native nativeCheckComposerNodeExclusion(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method private native nativeClearDisplay(JI)V
.end method

.method private native nativeClearFilter(J)I
.end method

.method private native nativeConcatShootVideo(JLjava/lang/String;[Ljava/lang/String;[JZ)I
.end method

.method private static native nativeConfigMaxCacheFrameCount(I)I
.end method

.method private native nativeCreateEngine([Ljava/lang/String;[I[I)J
.end method

.method private native nativeCreateTimeline(J)I
.end method

.method private native nativeDeleteAudioTrack(JIZ)I
.end method

.method private native nativeDeleteClip(JIII)I
.end method

.method private native nativeDeleteKeyFrameParam(JIII)I
.end method

.method private native nativeDeleteSubVideoTrack(JI)I
.end method

.method private native nativeDestroyEngine(J)I
.end method

.method private static native nativeDetectAudioLoudness([Ljava/lang/String;[I[I)[Lcom/ss/android/vesdk/LoudnessDetectResult;
.end method

.method private native nativeDoLensOneKeyHdrDetect(J)I
.end method

.method private native nativeDumpSequence(J)Ljava/lang/String;
.end method

.method private native nativeDumpSequence(JLjava/lang/String;)V
.end method

.method private static native nativeEnableAGFXCtx(Z)I
.end method

.method private static native nativeEnableAndroidHdr2SDRSupport(Z)I
.end method

.method private static native nativeEnableAndroidHdrPreviewSupport(Z)I
.end method

.method private native nativeEnableAudioDisplayCallBack(JZ)I
.end method

.method private static native nativeEnableAudioGBU(Z)I
.end method

.method private static native nativeEnableColorSpace2020(Z)I
.end method

.method private static native nativeEnableCompileGLContextReuse(Z)I
.end method

.method private static native nativeEnableConcurrentPreloadOpt(I)I
.end method

.method private static native nativeEnableCreateDecoderByName(Z)I
.end method

.method private static native nativeEnableCrossplatformGLBaseFBO(Z)I
.end method

.method private static native nativeEnableDecoderDispatch(I)I
.end method

.method private static native nativeEnableDecoderResourceScheduleOptHw(I)I
.end method

.method private static native nativeEnableDeviceCapabilityOpt(I)I
.end method

.method private static native nativeEnableDisplayP3ReEncode(Z)I
.end method

.method private static native nativeEnableDisplayP3Render(Z)I
.end method

.method private static native nativeEnableEditorContextQueue(I)I
.end method

.method private native nativeEnableEffect(JZ)I
.end method

.method private native nativeEnableEffectAmazing(JZ)I
.end method

.method private static native nativeEnableEffectAmazingMV(Z)I
.end method

.method private static native nativeEnableEffectCanvas(Z)I
.end method

.method private static native nativeEnableEffectRenderWithoutGlreadpixels(Z)I
.end method

.method private static native nativeEnableEffectTransiton(Z)I
.end method

.method private native nativeEnableFaceDetect(JZ)I
.end method

.method private static native nativeEnableFileInfoCache(Z)I
.end method

.method private static native nativeEnableFirstFrameOpt(Z)I
.end method

.method private native nativeEnableGenderDetect(JZ)I
.end method

.method private native nativeEnableHDRSetting(JZ)I
.end method

.method private static native nativeEnableHighSpeed(Z)I
.end method

.method private native nativeEnableHighSpeedForSingle(JZ)I
.end method

.method private static native nativeEnableImageAlgorithmReuseAndOptForAmazing(Z)I
.end method

.method private native nativeEnableImageEditor(JZ)I
.end method

.method private static native nativeEnableMultiAudioFileTrack(Z)I
.end method

.method private static native nativeEnableMultiThreadDecode(Z)I
.end method

.method private static native nativeEnableNewAudioMixer(Z)I
.end method

.method private static native nativeEnableOptGLFlush(Z)I
.end method

.method private static native nativeEnableOptPlayBackDropFrame(Z)I
.end method

.method private static native nativeEnableOutResolutionAlign4(Z)I
.end method

.method private static native nativeEnableParallDecodeMatting(Z)I
.end method

.method private static native nativeEnablePartRemux(Z)I
.end method

.method private static native nativeEnablePinRefactor(Z)I
.end method

.method private static native nativeEnablePipResolutionOpt(Z)I
.end method

.method private static native nativeEnablePreviewPureColorBackground(ZI)I
.end method

.method private static native nativeEnablePreviewSwDecodeCompileHwDecode(Z)I
.end method

.method private native nativeEnableReEncodeOpt(JZ)V
.end method

.method private static native nativeEnableReaderManagerRefactor(Z)I
.end method

.method private static native nativeEnableReaderRefactor(Z)I
.end method

.method private static native nativeEnableRefaComposer(Z)I
.end method

.method private static native nativeEnableRenderLib(Z)I
.end method

.method private static native nativeEnableRenderLibFBOOpt(Z)I
.end method

.method private static native nativeEnableSeekAndPreloadOpt(Z)I
.end method

.method private static native nativeEnableSmartTransDetect(Z)I
.end method

.method private native nativeExcAICutOutTask(J)I
.end method

.method private native nativeExpandTimeline(JI)I
.end method

.method private native nativeFaceCoverClear(JILjava/lang/String;Z)I
.end method

.method private native nativeFaceCoverClearCache(J)I
.end method

.method private native nativeFaceCoverLoad(JI[Ljava/lang/String;ILjava/lang/String;Z)I
.end method

.method private native nativeFaceCoverRestoreAll(J)I
.end method

.method private native nativeFaceCoverScale(JIDDDLjava/lang/String;Z)I
.end method

.method private native nativeFaceCoverSet(JIDDLjava/lang/String;Z)I
.end method

.method private native nativeFaceCoverSetDir(JLjava/lang/String;)I
.end method

.method private native nativeFlushSeekCmd(J)I
.end method

.method private static native nativeForceCompileBytevc1SWdecode(Z)I
.end method

.method private static native nativeForceEditBytevc1SWdecode(Z)I
.end method

.method private native nativeFrameTrace(JLjava/lang/String;I)I
.end method

.method private native nativeGenEditorStatus(J)J
.end method

.method private native nativeGetAllAudioTracks(J)Ljava/lang/Object;
.end method

.method private native nativeGetAllClips(JII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAllVideoFileInfos(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipVideoFileInfoParam;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAudioCommonFilterPreprocessResult(JJ)[B
.end method

.method private native nativeGetClipInfoString(JIII)Ljava/lang/String;
.end method

.method private native nativeGetClipInfoStringWithPath(JIIILjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetClipProgress(JI)F
.end method

.method private native nativeGetClipSequenceOut(JIII)J
.end method

.method private native nativeGetColorFilterIntensity(JLjava/lang/String;)F
.end method

.method private native nativeGetCurPosition(J)I
.end method

.method private native nativeGetCurState(J)I
.end method

.method private native nativeGetDecodeDumpInfo(JII)[I
.end method

.method private native nativeGetDecodeImage(JLandroid/graphics/Bitmap;II)I
.end method

.method private native nativeGetDisplayDumpSize(J)[I
.end method

.method private native nativeGetDisplayImage(JLandroid/graphics/Bitmap;)I
.end method

.method private native nativeGetDuration(J)I
.end method

.method private native nativeGetDurationUs(J)J
.end method

.method private native nativeGetImages(J[IIII)I
.end method

.method private native nativeGetInitResolution(J)[I
.end method

.method private static native nativeGetMVInfoStatic(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native nativeGetMetaData(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetPCMDeliverHandle(J)J
.end method

.method private native nativeGetProcessedImage(JLandroid/graphics/Bitmap;)I
.end method

.method private native nativeGetProjectProgress(J)F
.end method

.method private native nativeGetRuntimeGLVersion(J)I
.end method

.method private native nativeGetSequenceUniqueKey(J)Ljava/lang/String;
.end method

.method private native nativeGetSingleTrackProcessedImage(JILandroid/graphics/Bitmap;)I
.end method

.method private native nativeGetTimeEffectCurPosition(J)I
.end method

.method private native nativeGetTimeEffectDuration(J)I
.end method

.method private native nativeGetTrackVolume(JIII)F
.end method

.method private native nativeGetTransparentImage(JLandroid/graphics/Bitmap;)I
.end method

.method private native nativeInitAudioEditor(JLjava/lang/String;[Ljava/lang/String;[I[I[F)I
.end method

.method private native nativeInitAudioExtendToFile(J)I
.end method

.method private native nativeInitImageEditor(J[Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[II)I
.end method

.method private native nativeInitVideoEditor(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I)I
.end method

.method private native nativeInitVideoEditor2(J[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ)I
.end method

.method private native nativeInitVideoEditor2LoadCache(J[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ[Z[Ljava/lang/String;)I
.end method

.method private native nativeInitVideoEditorLoadCache(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I[Z[Ljava/lang/String;)I
.end method

.method private native nativeInitVideoEditorWithCanvas(J[Ljava/lang/String;[Landroid/graphics/Bitmap;[Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[[Ljava/lang/String;[FI[Lcom/ss/android/vesdk/VESize;)I
.end method

.method private native nativeInitVideoEditorWithStruct(J[Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Ljava/lang/String;I)I
.end method

.method private native nativeInsertClip(JIIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
.end method

.method private native nativeIsAudioExtendToFileProcessing(J)Z
.end method

.method private native nativeIsCompileEncode(J)I
.end method

.method private native nativeIsGestureRegistered(JI)Z
.end method

.method private native nativeIsWatermarkCompileEncode(J)I
.end method

.method private native nativeLockSeekVideoClip(JI)I
.end method

.method private native nativeMoveClip(JIIIZ)I
.end method

.method private static native nativeOpenEditorFpsLog(Z)I
.end method

.method private static native nativeOpenOutputCallback(Z)I
.end method

.method private native nativePause(JI)I
.end method

.method private native nativePauseSync(J)I
.end method

.method private native nativePrepareEngine(JI)I
.end method

.method private native nativePreprocessAudioTrackForFilter(JIILjava/lang/String;[B[J)I
.end method

.method private native nativeProcessDoubleClickEvent(JFF)I
.end method

.method private native nativeProcessLongPressEvent(JFF)I
.end method

.method private native nativeProcessPanEvent(JFFFFF)I
.end method

.method private native nativeProcessRotationEvent(JFF)I
.end method

.method private native nativeProcessScaleEvent(JFF)I
.end method

.method private native nativeProcessTouchDownEvent(JFFI)I
.end method

.method private native nativeProcessTouchEvent(JFF)I
.end method

.method private native nativeProcessTouchEvent2(JIFFFFII)Z
.end method

.method private native nativeProcessTouchMoveEvent(JFF)I
.end method

.method private native nativeProcessTouchUpEvent(JFFI)I
.end method

.method private native nativePushImageToBuffer(JLjava/lang/String;)I
.end method

.method private native nativeRefreshCurrentFrame(JI)I
.end method

.method private native nativeReleaseEngine(J)I
.end method

.method private native nativeReleaseEngineAsync(J)I
.end method

.method private native nativeReleasePreviewSurface(J)V
.end method

.method private native nativeReloadComposerNodes(J[Ljava/lang/String;)I
.end method

.method private native nativeRemoveAICutOutClipParam(JI)I
.end method

.method private native nativeRemoveComposerNodes(J[Ljava/lang/String;)I
.end method

.method private native nativeRemoveEffectCallback(J)I
.end method

.method private native nativeRemoveFilter(J[I)I
.end method

.method private native nativeRemoveMessageCenterListener(J)I
.end method

.method private native nativeReplaceClip(JIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
.end method

.method private native nativeReplaceComposerNodesWithTag(J[Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I
.end method

.method private native nativeResetCallback(J)V
.end method

.method private native nativeSeek(JIIII)I
.end method

.method private static native nativeSeekPredictOpt(Z)I
.end method

.method private native nativeSeekWithResult(JI)I
.end method

.method private native nativeSeekWithTolerance(JIIIII)I
.end method

.method private native nativeSetAlgorithmPreConfig(JII)I
.end method

.method private native nativeSetAlgorithmSyncAndNum(JZI)I
.end method

.method private native nativeSetBackGroundColor(JI)V
.end method

.method private native nativeSetClientState(JI)I
.end method

.method private native nativeSetClipAttr(JIIILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetCompileAudioDriver(JLjava/lang/String;IILjava/lang/String;)I
.end method

.method private static native nativeSetCompileReport(I)I
.end method

.method private native nativeSetComposerMode(JII)I
.end method

.method private native nativeSetComposerNodes(J[Ljava/lang/String;)I
.end method

.method private native nativeSetCustomProcessor(JLcom/ss/android/vesdk/VEFrameCustomProcessor;)I
.end method

.method private native nativeSetDeviceRotation(J[FD)I
.end method

.method private native nativeSetDisplayState(JFFFFIII)V
.end method

.method private native nativeSetDldEnabled(JZ)I
.end method

.method private native nativeSetDldThrVal(JI)I
.end method

.method private native nativeSetDleEnabled(JZ)I
.end method

.method private native nativeSetDleEnabledPreview(JZ)I
.end method

.method private static native nativeSetDropFrameParam(ZJJ)I
.end method

.method private static native nativeSetEditorFirstFrameDelay(I)I
.end method

.method private native nativeSetEffectCacheInt(JLjava/lang/String;I)I
.end method

.method private native nativeSetEffectCallback(JLcom/ss/android/vesdk/VEListener$VEEditorEffectListener;)I
.end method

.method private native nativeSetEffectMaxMemoryCache(JI)I
.end method

.method private native nativeSetEffectParams(JLcom/ss/android/vesdk/VEEffectParams;)I
.end method

.method private native nativeSetEnableMultipleAudioFilter(JZ)V
.end method

.method private native nativeSetEnableRemuxVideo(JZ)V
.end method

.method private native nativeSetEncoderParallel(JZ)V
.end method

.method private native nativeSetExpandLastFrame(JZ)V
.end method

.method private native nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I
.end method

.method private native nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/VEStickerAnimator;)I
.end method

.method private native nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I
.end method

.method private native nativeSetFilterParam(JILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetFilterParam2(JILjava/lang/String;[B)I
.end method

.method private static native nativeSetForceDropFrameWithoutAudio(Z)I
.end method

.method private static native nativeSetImageBufferLimit(III)I
.end method

.method private static native nativeSetInfoStickerTransEnable(Z)I
.end method

.method private native nativeSetKeyFrameParam(JIIILjava/lang/String;)I
.end method

.method private native nativeSetMaleMakeupState(JZ)I
.end method

.method private static native nativeSetMaxAudioReaderCount(I)I
.end method

.method private static native nativeSetMaxDetectFrameCount(I)V
.end method

.method private static native nativeSetMaxSoftwareVideoReaderCount(IIII)I
.end method

.method private native nativeSetMessageCenterListener(JLcom/ss/android/vesdk/VEListener$VEMessageCenterListener;)I
.end method

.method private static native nativeSetOptVersion(I)I
.end method

.method private native nativeSetOption(JILjava/lang/String;F)V
.end method

.method private native nativeSetOption(JILjava/lang/String;J)V
.end method

.method private native nativeSetOption(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetOptionArray(JI[Ljava/lang/String;[J)V
.end method

.method private native nativeSetOptionIntArray(JILjava/lang/String;[I)V
.end method

.method private native nativeSetOptionLongArray(JILjava/lang/String;[J)V
.end method

.method private native nativeSetPreviewFps(JI)V
.end method

.method private native nativeSetPreviewScaleMode(JI)I
.end method

.method private native nativeSetPreviewSurface(JLandroid/view/Surface;)V
.end method

.method private native nativeSetPreviewSurfaceBitmap(JLandroid/graphics/Bitmap;Z)V
.end method

.method private native nativeSetSpeedRatio(JF)V
.end method

.method private native nativeSetSubTrackSeqIn(JIII)I
.end method

.method private native nativeSetSurfaceSize(JII)V
.end method

.method private static native nativeSetTexturePoolLimit(II)I
.end method

.method private native nativeSetTimeRange(JIII)I
.end method

.method private native nativeSetTrackDurationType(JIII)I
.end method

.method private native nativeSetTrackFilterEnable(JIZZ)I
.end method

.method private native nativeSetTrackLayer(JIII)I
.end method

.method private native nativeSetTrackMinMaxDuration(JIIII)I
.end method

.method private native nativeSetTrackVolume(JIIF)Z
.end method

.method private native nativeSetTransitionAt(JIJLjava/lang/String;)I
.end method

.method private native nativeSetVideoBackGroundColor(JI)V
.end method

.method private native nativeSetViewPort(JIIII)V
.end method

.method private native nativeSetWaterMark(J[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)V
.end method

.method private native nativeStart(J)I
.end method

.method private native nativeStartEffectMonitor(J)I
.end method

.method private native nativeStop(J)I
.end method

.method private native nativeStopEffectMonitor(J)I
.end method

.method private native nativeSuspendGestureRecognizer(JIZ)Z
.end method

.method private native nativeSwitchResourceLoadMode(JZI)I
.end method

.method private native nativeUninitAudioExtendToFile(J)I
.end method

.method private native nativeUpdateAICutOutClipParam(JIILcom/ss/android/vesdk/clipparam/VEAICutOutClipParam;)I
.end method

.method private native nativeUpdateAlgorithmRuntimeParam(JIF)I
.end method

.method private native nativeUpdateAmazingFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;)I
.end method

.method private native nativeUpdateAudioTrack(JIIIIIZZ)I
.end method

.method private native nativeUpdateAudioTrack2(JIIIIIZII)I
.end method

.method private native nativeUpdateBeautyFilterParam(JIILcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;)I
.end method

.method private native nativeUpdateCanvasFilterParam(JIILcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I
.end method

.method private native nativeUpdateCanvasResolution(JII)I
.end method

.method private native nativeUpdateClipsSourceParam(JII[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I
.end method

.method private native nativeUpdateClipsTimelineParam(JII[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
.end method

.method private native nativeUpdateColorAdjustHslFilterParam(JIILcom/ss/android/vesdk/filterparam/VEColorHslFilterParam;)I
.end method

.method private native nativeUpdateColorFilterParam(JIILcom/ss/android/vesdk/filterparam/VEColorFilterParam;)I
.end method

.method private native nativeUpdateComposerNode(JLjava/lang/String;Ljava/lang/String;F)I
.end method

.method private native nativeUpdateCropFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;)I
.end method

.method private native nativeUpdateEffectComposerParam(JIILcom/ss/android/vesdk/filterparam/VEComposerFilterParam;)I
.end method

.method private native nativeUpdateEffectFilterParam(JIILcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I
.end method

.method private native nativeUpdateEffectHdrFilterParam(JIILcom/ss/android/vesdk/filterparam/VEEffectHdrFilterParam;)I
.end method

.method private native nativeUpdateFilterTime(JIIII)I
.end method

.method private native nativeUpdateImageAddFilterParam(JIILcom/ss/android/vesdk/filterparam/VEImageAddFilterParam;)I
.end method

.method private native nativeUpdateImageTransformFilterParam(JIILcom/ss/android/vesdk/filterparam/VEImageTransformFilterParam;)I
.end method

.method private native nativeUpdateLensHdrFilterParam(JIILcom/ss/android/vesdk/filterparam/VELensHdrFilterParam;)I
.end method

.method private native nativeUpdateLensOneKeyHdrFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoLensOneKeyHdrParam;)I
.end method

.method private native nativeUpdateMultiComposerNodes(JI[Ljava/lang/String;[Ljava/lang/String;[F)I
.end method

.method private native nativeUpdateMultiEffectComposerParam(JIILcom/ss/android/vesdk/filterparam/VEMultiComposerFilterParam;)I
.end method

.method private native nativeUpdateQualityFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoAjustmentFilterParam;)I
.end method

.method private native nativeUpdateReshapeFilterParam(JIILcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;)I
.end method

.method private native nativeUpdateScene(J[Ljava/lang/String;[I[I)I
.end method

.method private native nativeUpdateSceneFileOrder(J[I)I
.end method

.method private native nativeUpdateSceneLoadCache(J[Ljava/lang/String;[I[I[Z[Ljava/lang/String;)I
.end method

.method private native nativeUpdateSceneTime(J[Z[I[I[I[D)I
.end method

.method private native nativeUpdateTrackClip(JII[Ljava/lang/String;)I
.end method

.method private native nativeUpdateTrackFilter(JIIZ)I
.end method

.method private native nativeUpdateTrackFilterDuration(JIIZJ)I
.end method

.method private native nativeUpdateVideoStabFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;)I
.end method

.method private native nativeUpdateVideoTransformFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;)I
.end method

.method public static openEditorFpsLog(Z)I
    .registers 1

    .line 1558
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeOpenEditorFpsLog(Z)I

    move-result p0

    return p0
.end method

.method public static openOutputCallback(Z)I
    .registers 1

    .line 1562
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeOpenOutputCallback(Z)I

    move-result p0

    return p0
.end method

.method public static setCompileGLContextReuse(Z)I
    .registers 1

    .line 1630
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableCompileGLContextReuse(Z)I

    move-result p0

    return p0
.end method

.method public static setCompileReportState(I)I
    .registers 1

    .line 1626
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetCompileReport(I)I

    move-result p0

    return p0
.end method

.method public static setDropFrameParam(ZJJ)I
    .registers 5

    .line 1574
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDropFrameParam(ZJJ)I

    move-result p0

    return p0
.end method

.method public static setEnableEffectCanvas(Z)I
    .registers 1

    .line 1617
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableEffectCanvas(Z)I

    move-result p0

    return p0
.end method

.method public static setEnableEffectTransition(Z)I
    .registers 1

    .line 1607
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableEffectTransiton(Z)I

    move-result p0

    return p0
.end method

.method public static setEnableOpt(I)I
    .registers 1

    .line 1400
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOptVersion(I)I

    move-result p0

    return p0
.end method

.method public static setEnableRefaComposer(Z)I
    .registers 1

    .line 1622
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableRefaComposer(Z)I

    move-result p0

    return p0
.end method

.method public static setForceDropFrameWithoutAudio(Z)I
    .registers 1

    .line 1612
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetForceDropFrameWithoutAudio(Z)I

    move-result p0

    return p0
.end method

.method public static setImageBufferLimit(III)I
    .registers 3

    .line 1598
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetImageBufferLimit(III)I

    move-result p0

    return p0
.end method

.method public static setInfoStickerTransEnable(Z)I
    .registers 1

    .line 2896
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetInfoStickerTransEnable(Z)I

    move-result p0

    return p0
.end method

.method public static setLensOneKeyHdrMaxCacheSize(I)V
    .registers 1

    .line 2680
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetMaxDetectFrameCount(I)V

    return-void
.end method

.method public static setMaxAudioReaderCount(I)I
    .registers 1

    .line 1566
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetMaxAudioReaderCount(I)I

    move-result p0

    return p0
.end method

.method public static setMaxSoftWareVideoReaderCount(IIII)I
    .registers 4

    .line 1570
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetMaxSoftwareVideoReaderCount(IIII)I

    move-result p0

    return p0
.end method

.method public static setTexturePoolLimit(II)I
    .registers 2

    .line 1602
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTexturePoolLimit(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addAudioTrack(Ljava/lang/String;IIIIZ)I
    .registers 16

    .line 1061
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1063
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, -0x64

    return p0

    .line 1067
    :cond_13
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrack(JLjava/lang/String;IIIIZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIIIZII)I
    .registers 20

    .line 1144
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1146
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, -0x64

    return p0

    .line 1150
    :cond_13
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrack2(JLjava/lang/String;IIIIZII)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIIIZZ)I
    .registers 18

    .line 1071
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1073
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, -0x64

    return p0

    .line 1077
    :cond_13
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrackForTrack(JLjava/lang/String;IIIIZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;Ljava/lang/String;IIIIZZ)I
    .registers 20

    .line 1081
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1083
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, -0x64

    return p0

    .line 1087
    :cond_13
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrackWithNeedPrepare(JLjava/lang/String;Ljava/lang/String;IIIIZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;Ljava/lang/String;IIIIZZZ)I
    .registers 22

    .line 1091
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1093
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, -0x64

    return p0

    .line 1097
    :cond_13
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrackWithNeedPrepareForTrack(JLjava/lang/String;Ljava/lang/String;IIIIZZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrackForClips([Ljava/lang/String;[I[I[F)I
    .registers 12

    .line 1120
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-eqz p1, :cond_1a

    .line 1122
    array-length v0, p1

    if-nez v0, :cond_10

    goto :goto_1a

    :cond_10
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1126
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrackForClips(J[Ljava/lang/String;[I[I[F)I

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/16 p0, -0x64

    return p0
.end method

.method public addAudioTrackWithStruct(Lcom/ss/android/vesdk/clipparam/VECommonClipParam;Z)I
    .registers 7

    .line 1101
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1103
    :cond_a
    iget-object v0, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 p0, -0x64

    return p0

    .line 1107
    :cond_15
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrackWithStruct(JLcom/ss/android/vesdk/clipparam/VECommonClipParam;Z)I

    move-result p0

    return p0
.end method

.method public addClipAuxiliaryParam(II[Lcom/ss/android/vesdk/clipparam/VEClipAuxiliaryParam;)I
    .registers 10

    .line 645
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 649
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddClipAuxiliaryParam(JII[Lcom/ss/android/vesdk/clipparam/VEClipAuxiliaryParam;)I

    move-result p0

    return p0
.end method

.method public addExternalVideoTrack([Ljava/lang/String;[Ljava/lang/String;[I[I[I[II)I
    .registers 18

    .line 1257
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1259
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddSubVideoTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[II)I

    move-result p0

    return p0
.end method

.method public addFileInfoCache(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2273
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 2274
    const-string p0, ""

    return-object p0

    .line 2276
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddFileInfoCache(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addFilters([I[Ljava/lang/String;[I[I[I[I)[I
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1291
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I
    .registers 18

    .line 1313
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_e

    const/4 p0, -0x1

    .line 1314
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    :cond_e
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1315
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddFilters(J[I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public addMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2259
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 2262
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddMetaData(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addWaterMark([Ljava/lang/String;[Ljava/lang/String;[I[IDDDD)I
    .registers 33

    move-object/from16 v1, p0

    .line 1245
    iget-wide v2, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_d

    const/16 v0, -0x70

    return v0

    .line 1247
    :cond_d
    iget v0, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-gez v0, :cond_14

    const/16 v0, -0x69

    return v0

    :cond_14
    const/16 v18, 0x5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    move-wide/from16 v16, p11

    move/from16 v19, v0

    .line 1251
    invoke-direct/range {v1 .. v19}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddSubTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDII)I

    move-result v0

    return v0
.end method

.method public adjustFilterInOut(III)I
    .registers 10

    .line 1388
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAdjustFilterInOut(JIII)I

    move-result p0

    return p0
.end method

.method public appendComposerNodes([Ljava/lang/String;)I
    .registers 6

    .line 3009
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 3012
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAppendComposerNodes(J[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public beginAudioExtendToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;)I
    .registers 17

    .line 963
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    const/16 v0, -0x70

    return v0

    .line 967
    :cond_b
    new-instance v1, Lcom/ss/android/ttve/nativePort/TEInterface$1;

    move-object/from16 v2, p7

    invoke-direct {v1, p0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface$1;-><init>(Lcom/ss/android/ttve/nativePort/TEInterface;Lcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;)V

    .line 989
    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setAudioExtendToFileCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;)V

    .line 990
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeBeginAudioExtendToFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)I

    move-result v0

    return v0
.end method

.method public cancelAudioExtendToFile()I
    .registers 3

    .line 994
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCancelAudioExtendToFile(J)I

    move-result p0

    return p0
.end method

.method public cancelGetImages()I
    .registers 3

    .line 1679
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCancelGetImages(J)I

    move-result p0

    return p0
.end method

.method public changeResWithEffect([Z[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Ljava/lang/String;[Ljava/lang/String;[I[I[F[I)I
    .registers 28

    move-object/from16 v9, p7

    .line 875
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/16 p0, -0x70

    return p0

    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v4, p2

    if-nez p6, :cond_1b

    .line 880
    array-length v1, v4

    new-array v1, v1, [F

    .line 881
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    move-object v8, v1

    goto :goto_1d

    :cond_1b
    move-object/from16 v8, p6

    :goto_1d
    if-nez p11, :cond_29

    if-eqz v9, :cond_29

    .line 885
    array-length v1, v9

    new-array v1, v1, [F

    .line 886
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    move-object v13, v1

    goto :goto_2b

    :cond_29
    move-object/from16 v13, p11

    .line 888
    :goto_2b
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeChangeResWithEffect(J[Z[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Ljava/lang/String;[Ljava/lang/String;[I[I[F[I)I

    move-result p0

    return p0
.end method

.method public changeTransitionAt(ILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I
    .registers 7

    .line 2708
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2712
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeChangeTransitonAt(JILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I

    move-result p0

    return p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 10

    .line 3030
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_f

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 3031
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    :cond_f
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3033
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCheckComposerNodeExclusion(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public clearDisplay(I)V
    .registers 4

    .line 2165
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeClearDisplay(JI)V

    return-void
.end method

.method public clearFilter()I
    .registers 5

    .line 1319
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1322
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeClearFilter(J)I

    move-result p0

    return p0
.end method

.method public concatShootVideo(Ljava/lang/String;[Ljava/lang/String;[JZ)I
    .registers 12

    .line 2552
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 2555
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeConcatShootVideo(JLjava/lang/String;[Ljava/lang/String;[JZ)I

    move-result p0

    return p0
.end method

.method public createTimeline()I
    .registers 5

    .line 2371
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2374
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCreateTimeline(J)I

    move-result p0

    return p0
.end method

.method public deleteAICutOutClipParam(I)I
    .registers 6

    .line 2645
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2648
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRemoveAICutOutClipParam(JI)I

    move-result p0

    return p0
.end method

.method public deleteAudioTrack(IZ)I
    .registers 7

    .line 1204
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1207
    :cond_a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDeleteAudioTrack(JIZ)I

    move-result p0

    return p0
.end method

.method public deleteClip(III)I
    .registers 10

    .line 2509
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2513
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDeleteClip(JIII)I

    move-result p0

    return p0
.end method

.method public deleteExternalVideoTrack(I)I
    .registers 6

    .line 1217
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1220
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDeleteSubVideoTrack(JI)I

    move-result p0

    return p0
.end method

.method public deleteKeyFrameParam(III)I
    .registers 10

    .line 2684
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2687
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDeleteKeyFrameParam(JIII)I

    move-result p0

    return p0
.end method

.method public destroyEngine()I
    .registers 6

    .line 572
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/16 p0, -0x70

    return p0

    .line 575
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDestroyEngine(J)I

    move-result v0

    .line 576
    iput-wide v2, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    return v0
.end method

.method public doLensOneKeyHdrDetect()I
    .registers 5

    .line 2673
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2676
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDoLensOneKeyHdrDetect(J)I

    move-result p0

    return p0
.end method

.method public dumpSequence()Ljava/lang/String;
    .registers 5

    .line 3104
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 3108
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDumpSequence(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dumpSequence(Ljava/lang/String;)V
    .registers 6

    .line 3112
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 3116
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDumpSequence(JLjava/lang/String;)V

    return-void
.end method

.method public enableAudioDisplayCallBack(Z)I
    .registers 6

    .line 1404
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1408
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableAudioDisplayCallBack(JZ)I

    move-result p0

    return p0
.end method

.method public enableEffect(Z)I
    .registers 6

    .line 2946
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2949
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableEffect(JZ)I

    move-result p0

    return p0
.end method

.method public enableEffectAmazing(Z)I
    .registers 6

    .line 2810
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2814
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableEffectAmazing(JZ)I

    move-result p0

    return p0
.end method

.method public enableFaceDetect(Z)I
    .registers 6

    .line 2084
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2087
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableFaceDetect(JZ)I

    move-result p0

    return p0
.end method

.method public enableGenderDetect(Z)I
    .registers 6

    .line 2091
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2094
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableGenderDetect(JZ)I

    move-result p0

    return p0
.end method

.method public enableHDRSetting(Z)I
    .registers 6

    .line 2748
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2751
    :cond_b
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "enable_android_hdr_preview_support"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2752
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    const/4 p0, -0x1

    return p0

    .line 2760
    :cond_33
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableHDRSetting(JZ)I

    move-result p0

    return p0
.end method

.method public enableHighSpeedForSingle(Z)I
    .registers 6

    .line 2098
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2101
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableHighSpeedForSingle(JZ)I

    move-result p0

    return p0
.end method

.method public enableImageEditor(Z)I
    .registers 6

    .line 2925
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2928
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableImageEditor(JZ)I

    move-result p0

    return p0
.end method

.method public enableReEncodeOpt(Z)V
    .registers 6

    .line 2007
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 2008
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnableReEncodeOpt(JZ)V

    return-void
.end method

.method public enableSimpleProcessor(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    const/4 p1, 0x0

    .line 1830
    const-string v2, "engine processor mode"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public excAICutOutTask()I
    .registers 5

    .line 2652
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2655
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeExcAICutOutTask(J)I

    move-result p0

    return p0
.end method

.method public expandTimeline(I)I
    .registers 4

    .line 1326
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeExpandTimeline(JI)I

    move-result p0

    return p0
.end method

.method public faceCoverClear(ILjava/lang/String;Z)I
    .registers 10

    .line 910
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .line 914
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFaceCoverClear(JILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public faceCoverClearCache()I
    .registers 5

    .line 942
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 946
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFaceCoverClearCache(J)I

    move-result p0

    return p0
.end method

.method public faceCoverLoad(I[Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 14

    .line 902
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 906
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFaceCoverLoad(JI[Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public faceCoverRestoreAll()I
    .registers 5

    .line 934
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 938
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFaceCoverRestoreAll(J)I

    move-result p0

    return p0
.end method

.method public faceCoverScale(IDDDLjava/lang/String;Z)I
    .registers 22

    .line 926
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 930
    invoke-direct/range {v0 .. v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFaceCoverScale(JIDDDLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public faceCoverSet(IDDLjava/lang/String;Z)I
    .registers 18

    .line 918
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 922
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFaceCoverSet(JIDDLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public faceCoverSetDir(Ljava/lang/String;)I
    .registers 6

    .line 893
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 897
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFaceCoverSetDir(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public flushSeekCmd()I
    .registers 5

    .line 1949
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1952
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFlushSeekCmd(J)I

    move-result p0

    return p0
.end method

.method public genEditorStatus()V
    .registers 3

    .line 2541
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGenEditorStatus(J)J

    return-void
.end method

.method public getAllAudioTracks()Ljava/lang/Object;
    .registers 5

    .line 3097
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 3100
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetAllAudioTracks(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAllClips(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;"
        }
    .end annotation

    .line 2875
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2878
    :cond_a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetAllClips(JII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllVideoFileInfos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipVideoFileInfoParam;",
            ">;"
        }
    .end annotation

    .line 2882
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2885
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetAllVideoFileInfos(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAudioCommonFilterPreprocessResult(J)[B
    .registers 7

    .line 2408
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2411
    :cond_a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetAudioCommonFilterPreprocessResult(JJ)[B

    move-result-object p0

    return-object p0
.end method

.method public getClipInfoString(III)Ljava/lang/String;
    .registers 10

    .line 2280
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    .line 2281
    const-string p0, ""

    return-object p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2283
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetClipInfoString(JIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClipInfoStringWithPath(IIILjava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 2287
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    .line 2288
    const-string p0, ""

    return-object p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 2290
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetClipInfoStringWithPath(JIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClipMattingProgress(I)F
    .registers 6

    .line 2659
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/high16 p0, -0x3d200000    # -112.0f

    return p0

    .line 2662
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetClipProgress(JI)F

    move-result p0

    return p0
.end method

.method public getClipSequenceOut(III)J
    .registers 10

    .line 2724
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const-wide/16 p0, -0x70

    return-wide p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2728
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetClipSequenceOut(JIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public getColorFilterIntensity(Ljava/lang/String;)F
    .registers 6

    .line 2849
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/high16 p0, -0x3d200000    # -112.0f

    return p0

    .line 2852
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetColorFilterIntensity(JLjava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getCurPosition()I
    .registers 5

    .line 2244
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 2247
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetCurPosition(J)I

    move-result p0

    return p0
.end method

.method public getCurState()I
    .registers 5

    .line 2252
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 2255
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetCurState(J)I

    move-result p0

    return p0
.end method

.method public getDecodeImage(Landroid/graphics/Bitmap;II)I
    .registers 10

    .line 2121
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 2122
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDecodeImage(JLandroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method

.method public getDecodeInfo(II)[I
    .registers 8

    const/4 v0, 0x0

    .line 2148
    filled-new-array {v0}, [I

    move-result-object v0

    .line 2149
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_e

    return-object v0

    .line 2150
    :cond_e
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDecodeDumpInfo(JII)[I

    move-result-object p0

    return-object p0
.end method

.method public getDecodeRect(II)Lcom/ss/android/vesdk/VERect;
    .registers 7

    .line 2141
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    new-instance p0, Lcom/ss/android/vesdk/VERect;

    invoke-direct {p0, v3, v3, v3, v3}, Lcom/ss/android/vesdk/VERect;-><init>(IIII)V

    return-object p0

    .line 2142
    :cond_f
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDecodeDumpInfo(JII)[I

    move-result-object p0

    .line 2143
    new-instance p1, Lcom/ss/android/vesdk/VERect;

    aget p2, p0, v3

    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    const/4 v2, 0x3

    aget p0, p0, v2

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/ss/android/vesdk/VERect;-><init>(IIII)V

    return-object p1
.end method

.method public getDisplayImage(Landroid/graphics/Bitmap;)I
    .registers 6

    .line 2110
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2111
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDisplayImage(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public getDisplayRect()Lcom/ss/android/vesdk/VERect;
    .registers 6

    .line 2115
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    new-instance p0, Lcom/ss/android/vesdk/VERect;

    invoke-direct {p0, v3, v3, v3, v3}, Lcom/ss/android/vesdk/VERect;-><init>(IIII)V

    return-object p0

    .line 2116
    :cond_f
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDisplayDumpSize(J)[I

    move-result-object p0

    .line 2117
    new-instance v0, Lcom/ss/android/vesdk/VERect;

    aget v1, p0, v3

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/ss/android/vesdk/VERect;-><init>(IIII)V

    return-object v0
.end method

.method public getDuration()I
    .registers 5

    .line 2211
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 2214
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDuration(J)I

    move-result p0

    return p0
.end method

.method public getDurationUs()J
    .registers 5

    .line 2223
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2226
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHostTrackIndex()I
    .registers 1

    .line 2861
    iget p0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    return p0
.end method

.method public getImages([IIII)I
    .registers 12

    .line 1672
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetImages(J[IIII)I

    move-result p0

    return p0
.end method

.method public getInitResolution()[I
    .registers 6

    const/4 v0, -0x1

    .line 2173
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    .line 2174
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_e

    return-object v0

    .line 2177
    :cond_e
    invoke-direct {p0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetInitResolution(J)[I

    move-result-object p0

    return-object p0
.end method

.method public getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2266
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 2267
    const-string p0, ""

    return-object p0

    .line 2269
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetMetaData(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNativeHandler()J
    .registers 3

    .line 538
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    return-wide v0
.end method

.method public getPCMDeliverHandle()J
    .registers 5

    .line 2796
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 v0, -0x70

    return-wide v0

    .line 2799
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetPCMDeliverHandle(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessedImage(Landroid/graphics/Bitmap;)I
    .registers 6

    .line 2126
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2127
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetProcessedImage(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public getProjectMattingProgress()F
    .registers 5

    .line 2666
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/high16 p0, -0x3d200000    # -112.0f

    return p0

    .line 2669
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetProjectProgress(J)F

    move-result p0

    return p0
.end method

.method public getRuntimeGLVersion()I
    .registers 5

    .line 1224
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1227
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetRuntimeGLVersion(J)I

    move-result p0

    return p0
.end method

.method public getSequenceUniqueKey()Ljava/lang/String;
    .registers 5

    .line 1330
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 1331
    const-string p0, ""

    return-object p0

    .line 1333
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetSequenceUniqueKey(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSingleTrackProcessedImage(ILandroid/graphics/Bitmap;)I
    .registers 7

    .line 2131
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2132
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetSingleTrackProcessedImage(JILandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public getTrackVolume(III)F
    .registers 10

    .line 2343
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2346
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetTrackVolume(JIII)F

    move-result p0

    return p0
.end method

.method public getTransparentImage(Landroid/graphics/Bitmap;)I
    .registers 6

    .line 2136
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2137
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetTransparentImage(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public initAudioEditor(Ljava/lang/String;[Ljava/lang/String;[I[I[F)I
    .registers 14

    .line 631
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 635
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitAudioEditor(JLjava/lang/String;[Ljava/lang/String;[I[I[F)I

    move-result p0

    if-gez p0, :cond_18

    return p0

    .line 639
    :cond_18
    iput p0, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public initAudioExtendToFile()I
    .registers 5

    .line 954
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 958
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitAudioExtendToFile(J)I

    move-result p0

    return p0
.end method

.method public initAuthInternal([B)I
    .registers 6

    .line 3086
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 3089
    :cond_b
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_18

    const/16 p0, -0x6c

    return p0

    .line 3093
    :cond_18
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitAuthInternal(JLandroid/content/Context;[B)I

    move-result p0

    return p0
.end method

.method public initImageEditor([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[II)I
    .registers 26

    .line 804
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    const/16 v0, -0x70

    return v0

    :cond_b
    if-nez p9, :cond_17

    .line 809
    array-length v1, p1

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 810
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    move-object v11, v1

    goto :goto_19

    :cond_17
    move-object/from16 v11, p9

    .line 812
    :goto_19
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitImageEditor(J[Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[II)I

    move-result v1

    if-gez v1, :cond_36

    return v1

    .line 818
    :cond_36
    iput v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public initVideoEditor(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I)I
    .registers 16

    .line 597
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 601
    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitVideoEditor(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_19

    return p0

    .line 605
    :cond_19
    iput p0, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public initVideoEditor(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I[Z[Ljava/lang/String;)I
    .registers 20

    .line 611
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 615
    invoke-direct/range {v0 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitVideoEditorLoadCache(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I[Z[Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1f

    return p1

    .line 619
    :cond_1f
    iput p1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public initVideoEditor2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI)I
    .registers 25

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v12, p10

    .line 777
    invoke-virtual/range {v0 .. v13}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditor2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ)I

    move-result p0

    return p0
.end method

.method public initVideoEditor2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI[Z[Ljava/lang/String;)I
    .registers 30

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    .line 769
    invoke-virtual/range {v1 .. v16}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditor2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ[Z[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initVideoEditor2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ)I
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    .line 690
    iget-wide v2, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    const/16 v0, -0x70

    return v0

    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v4, p1

    if-nez p9, :cond_1d

    .line 695
    array-length v2, v4

    new-array v2, v2, [F

    .line 696
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    move-object v12, v2

    goto :goto_1f

    :cond_1d
    move-object/from16 v12, p9

    :goto_1f
    if-nez p10, :cond_2b

    if-eqz v7, :cond_2b

    .line 700
    array-length v2, v7

    new-array v2, v2, [F

    .line 701
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    move-object v13, v2

    goto :goto_2d

    :cond_2b
    move-object/from16 v13, p10

    .line 703
    :goto_2d
    iget-wide v2, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-direct/range {v1 .. v16}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitVideoEditor2(J[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ)I

    move-result v0

    if-gez v0, :cond_48

    return v0

    .line 709
    :cond_48
    iput v0, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public initVideoEditor2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ[Z[Ljava/lang/String;)I
    .registers 35

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    .line 741
    iget-wide v2, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    const/16 v0, -0x70

    return v0

    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v4, p1

    if-nez p9, :cond_1d

    .line 746
    array-length v2, v4

    new-array v2, v2, [F

    .line 747
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    move-object v12, v2

    goto :goto_1f

    :cond_1d
    move-object/from16 v12, p9

    :goto_1f
    if-nez p10, :cond_2b

    if-eqz v7, :cond_2b

    .line 751
    array-length v2, v7

    new-array v2, v2, [F

    .line 752
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    move-object v13, v2

    goto :goto_2d

    :cond_2b
    move-object/from16 v13, p10

    .line 754
    :goto_2d
    iget-wide v2, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-direct/range {v1 .. v18}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitVideoEditor2LoadCache(J[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ[Z[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4c

    return v0

    .line 760
    :cond_4c
    iput v0, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public initVideoEditorWithCanvas([Ljava/lang/String;[Landroid/graphics/Bitmap;I[Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[[Ljava/lang/String;[FI[Lcom/ss/android/vesdk/VESize;)I
    .registers 38

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 849
    iget-wide v2, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    const/16 v0, -0x70

    return v0

    :cond_f
    if-gtz v0, :cond_14

    const/16 v0, -0x64

    return v0

    :cond_14
    if-nez p15, :cond_20

    .line 858
    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 859
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    move-object/from16 v17, v0

    goto :goto_22

    :cond_20
    move-object/from16 v17, p15

    .line 861
    :goto_22
    iget-wide v2, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v18, p16

    move-object/from16 v19, p17

    invoke-direct/range {v1 .. v19}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitVideoEditorWithCanvas(J[Ljava/lang/String;[Landroid/graphics/Bitmap;[Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[[Ljava/lang/String;[FI[Lcom/ss/android/vesdk/VESize;)I

    move-result v0

    if-gez v0, :cond_49

    return v0

    .line 867
    :cond_49
    iput v0, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public initVideoEditorWithStruct([Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Ljava/lang/String;I)I
    .registers 12

    .line 653
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 657
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitVideoEditorWithStruct(J[Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_17

    return p0

    .line 661
    :cond_17
    iput p0, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public insertClip(IIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 14

    .line 2485
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2489
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInsertClip(JIIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0
.end method

.method public isAudioExtendToFileProcessing()Z
    .registers 3

    .line 1002
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeIsAudioExtendToFileProcessing(J)Z

    move-result p0

    return p0
.end method

.method public isCompileEncode()I
    .registers 5

    .line 2230
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 2233
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeIsCompileEncode(J)I

    move-result p0

    return p0
.end method

.method public isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
    .registers 6

    .line 3066
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 3069
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/VEGestureEvent;->ANY_SUPPORTED:Lcom/ss/android/vesdk/VEGestureEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 p1, -0x1

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 3070
    :goto_1c
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeIsGestureRegistered(JI)Z

    move-result p0

    return p0
.end method

.method public isWatermarkCompileEncode()I
    .registers 5

    .line 2237
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 2240
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeIsWatermarkCompileEncode(J)I

    move-result p0

    return p0
.end method

.method public lockSeekVideoClip(I)I
    .registers 6

    .line 1963
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1966
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeLockSeekVideoClip(JI)I

    move-result p0

    return p0
.end method

.method public moveClip(IIIZ)I
    .registers 12

    .line 2493
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2497
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeMoveClip(JIIIZ)I

    move-result p0

    return p0
.end method

.method public native nativeInitAuthInternal(JLandroid/content/Context;[B)I
.end method

.method public native nativeSetAudioOffset(JII)I
.end method

.method public pause(I)I
    .registers 6

    .line 2191
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2192
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePause(JI)I

    move-result p0

    return p0
.end method

.method public pauseSync()I
    .registers 5

    .line 2186
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2187
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePauseSync(J)I

    move-result p0

    return p0
.end method

.method public prepareEngine(I)I
    .registers 6

    .line 1658
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1661
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePrepareEngine(JI)I

    move-result p0

    return p0
.end method

.method public preprocessAudioTrackForFilter(IILjava/lang/String;[B[J)I
    .registers 14

    .line 2393
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2396
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePreprocessAudioTrackForFilter(JIILjava/lang/String;[B[J)I

    move-result p0

    return p0
.end method

.method public processDoubleClickEvent(FF)I
    .registers 7

    .line 2471
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2474
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessDoubleClickEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processLongPressEvent(FF)I
    .registers 7

    .line 2463
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2467
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessLongPressEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processPanEvent(FFFFF)I
    .registers 14

    .line 2439
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 2443
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessPanEvent(JFFFFF)I

    move-result p0

    return p0
.end method

.method public processRotationEvent(FF)I
    .registers 7

    .line 2455
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2459
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessRotationEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processScaleEvent(FF)I
    .registers 7

    .line 2447
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2451
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessScaleEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processTouchDownEvent(FFLcom/ss/android/vesdk/VEGestureType;)I
    .registers 10

    .line 2415
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2419
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessTouchDownEvent(JFFI)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(FF)I
    .registers 7

    .line 2953
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2956
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessTouchEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
    .registers 13

    .line 3058
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 3061
    :cond_a
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getPointerId()I

    move-result v3

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getY()F

    move-result v5

    .line 3062
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getForce()F

    move-result v6

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getMajorRadius()F

    move-result v7

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getEvent()Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    move-object v0, p0

    move v9, p2

    .line 3061
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessTouchEvent2(JIFFFFII)Z

    move-result p0

    return p0
.end method

.method public processTouchMoveEvent(FF)I
    .registers 7

    .line 2423
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2427
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessTouchMoveEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processTouchUpEvent(FFLcom/ss/android/vesdk/VEGestureType;)I
    .registers 10

    .line 2431
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2435
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessTouchUpEvent(JFFI)I

    move-result p0

    return p0
.end method

.method public pushImageToBuffer(Ljava/lang/String;)I
    .registers 6

    .line 1635
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1637
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePushImageToBuffer(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public refreshCurrentFrame(I)I
    .registers 6

    .line 2196
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2197
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRefreshCurrentFrame(JI)I

    move-result p0

    return p0
.end method

.method public releaseEngine()I
    .registers 5

    .line 551
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 554
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeReleaseEngine(J)I

    move-result p0

    return p0
.end method

.method public releaseEngineAsync()I
    .registers 5

    .line 559
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 562
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeReleaseEngineAsync(J)I

    move-result p0

    return p0
.end method

.method public releasePreviewSurface()V
    .registers 5

    .line 1992
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1993
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeReleasePreviewSurface(J)V

    return-void
.end method

.method public reloadComposerNodes([Ljava/lang/String;)I
    .registers 6

    .line 2995
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2998
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeReloadComposerNodes(J[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeComposerNodes([Ljava/lang/String;)I
    .registers 6

    .line 3016
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 3019
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRemoveComposerNodes(J[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeEffectCallback()I
    .registers 5

    .line 2826
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2829
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRemoveEffectCallback(J)I

    move-result p0

    return p0
.end method

.method public removeFilter([I)I
    .registers 6

    .line 1358
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1359
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRemoveFilter(J[I)I

    move-result p0

    return p0
.end method

.method public removeMessageCenterListener()I
    .registers 5

    .line 2842
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2845
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRemoveMessageCenterListener(J)I

    move-result p0

    return p0
.end method

.method public replaceClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 12

    .line 2501
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2505
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeReplaceClip(JIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0
.end method

.method public replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 14

    .line 3037
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 3040
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeReplaceComposerNodesWithTag(J[Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public seek(IIII)I
    .registers 12

    .line 1942
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1945
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSeek(JIIII)I

    move-result p0

    return p0
.end method

.method public seekWithResult(I)I
    .registers 6

    .line 1927
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1930
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSeekWithResult(JI)I

    move-result p0

    return p0
.end method

.method public seekWithTolerance(IIIII)I
    .registers 14

    .line 1956
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1959
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSeekWithTolerance(JIIIII)I

    move-result p0

    return p0
.end method

.method public setAlgorithmPreConfig(II)I
    .registers 7

    .line 2974
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2977
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetAlgorithmPreConfig(JII)I

    move-result p0

    return p0
.end method

.method public setAlgorithmReplay(ILjava/lang/String;)V
    .registers 7

    .line 2064
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 2065
    :cond_9
    const-string v0, "AlgorithmReplayMode"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 2066
    const-string v0, "AlgorithmReplayFilePath"

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlgorithmSyncAndNum(ZI)I
    .registers 7

    .line 2960
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2963
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetAlgorithmSyncAndNum(JZI)I

    move-result p0

    return p0
.end method

.method public setAudioCompileSetting(III)V
    .registers 8

    .line 2057
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 2058
    :cond_9
    const-string v0, "AudioSampleRate"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 2059
    const-string v0, "AudioChannels"

    int-to-long v1, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 2060
    const-string p2, "AudioBitrate"

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setAudioOffset(II)I
    .registers 7

    .line 1970
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1973
    :cond_b
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetAudioOffset(JII)I

    move-result p0

    return p0
.end method

.method public setBackGroundColor(I)V
    .registers 6

    .line 2155
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 2156
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetBackGroundColor(JI)V

    return-void
.end method

.method public setClientState(I)I
    .registers 6

    .line 3044
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 3047
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetClientState(JI)I

    move-result p0

    return p0
.end method

.method public setClipAttr(IIILjava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 2379
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetClipAttr(JIIILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCompileAudioDriver(Ljava/lang/String;IILjava/lang/String;)I
    .registers 12

    .line 2803
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 2806
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetCompileAudioDriver(JLjava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCompileCommonEncodeOptions(II)V
    .registers 6

    .line 1718
    const-string v0, "CompileBitrateMode"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1719
    const-string v0, "CompileEncodeProfile"

    int-to-long v1, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileFps(I)V
    .registers 5

    .line 1749
    const-string v0, "CompileFps"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileHardwareEncodeOptions(I)V
    .registers 5

    .line 1708
    const-string v0, "CompileHardwareBitrate"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileMVStillFramesPublishFps(I)V
    .registers 5

    .line 1757
    const-string v0, "CompileMVStillFramesPublishFps"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileMVStillFramesWatermarkFps(I)V
    .registers 5

    .line 1761
    const-string v0, "CompileMVStillFramesWatermarkFps"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompilePublishFps(I)V
    .registers 5

    .line 1753
    const-string v0, "CompilePublishFps"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileSoftInfo(Z)V
    .registers 6

    .line 2045
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_d

    const-wide/16 v2, 0x1

    :cond_d
    const/4 p1, 0x0

    .line 2047
    const-string v0, "CompileSoftInfo"

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileSoftwareEncodeOptions(IJII)V
    .registers 9

    .line 1731
    const-string v0, "CompileSoftwareCrf"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1732
    const-string v0, "CompileSoftwareMaxrate"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1733
    const-string p2, "CompileSoftwarePreset"

    int-to-long p3, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1734
    const-string p2, "CompileSoftwareQp"

    int-to-long p3, p5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileType(I)V
    .registers 5

    .line 1790
    const-string v0, "CompileType"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileWatermark(Lcom/ss/android/vesdk/VEWatermarkParam;)V
    .registers 7

    .line 1773
    iget-boolean v0, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    const-string v1, "SingleWayCompileWithWatermark"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const-wide/16 v3, 0x0

    .line 1775
    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1776
    const-string v0, "CompilePathWatermark"

    iget-object p1, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->extFile:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-wide/16 v3, 0x1

    .line 1779
    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1781
    :goto_19
    const-string p1, "CompilePathWavWatermark"

    const-string v0, ""

    invoke-virtual {p0, v2, p1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setComposerMode(II)I
    .registers 7

    .line 2988
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2991
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetComposerMode(JII)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;)I
    .registers 6

    .line 2981
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2984
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetComposerNodes(J[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCrop(IIII)V
    .registers 12

    .line 1834
    const-string v0, "engine crop width"

    const-string v1, "engine crop height"

    const-string v2, "engine crop x"

    const-string v3, "engine crop y"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    int-to-long p1, p2

    int-to-long v3, p3

    int-to-long p3, p4

    const/4 v5, 0x4

    .line 1835
    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v1, 0x1

    aput-wide p1, v5, v1

    const/4 p1, 0x2

    aput-wide v3, v5, p1

    const/4 p1, 0x3

    aput-wide p3, v5, p1

    .line 1836
    invoke-virtual {p0, v1, v0, v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(I[Ljava/lang/String;[J)V

    return-void
.end method

.method public setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)I
    .registers 6

    .line 2545
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2548
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetCustomProcessor(JLcom/ss/android/vesdk/VEFrameCustomProcessor;)I

    move-result p0

    return p0
.end method

.method public setDestroyVersion(Z)I
    .registers 4

    .line 1392
    iget-wide p0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setDeviceRotation([FD)I
    .registers 10

    .line 2478
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    .line 2481
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDeviceRotation(J[FD)I

    move-result p0

    return p0
.end method

.method public setDisplayState(FFFFIII)V
    .registers 18

    .line 2105
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2106
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDisplayState(JFFFFIII)V

    return-void
.end method

.method public setDldEnabled(Z)I
    .registers 6

    .line 2780
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2784
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDldEnabled(JZ)I

    move-result p0

    return p0
.end method

.method public setDldThrVal(I)I
    .registers 6

    .line 2788
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2792
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDldThrVal(JI)I

    move-result p0

    return p0
.end method

.method public setDleEnabled(Z)I
    .registers 6

    .line 2764
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2768
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDleEnabled(JZ)I

    move-result p0

    return p0
.end method

.method public setDleEnabledPreview(Z)I
    .registers 6

    .line 2772
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2776
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDleEnabledPreview(JZ)I

    move-result p0

    return p0
.end method

.method public setEditorFirstFrameDelay(I)I
    .registers 2

    .line 1586
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEditorFirstFrameDelay(I)I

    move-result p0

    return p0
.end method

.method public setEffectCacheInt(Ljava/lang/String;I)I
    .registers 7

    .line 2901
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2904
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEffectCacheInt(JLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setEffectCallback(Lcom/ss/android/vesdk/VEListener$VEEditorEffectListener;)I
    .registers 6

    .line 2818
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2821
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEffectCallback(JLcom/ss/android/vesdk/VEListener$VEEditorEffectListener;)I

    move-result p0

    return p0
.end method

.method public setEffectMaxMemoryCache(I)I
    .registers 6

    .line 2889
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2892
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEffectMaxMemoryCache(JI)I

    move-result p0

    return p0
.end method

.method public setEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I
    .registers 6

    .line 3051
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 3054
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEffectParams(JLcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public setEnableAvInterLeave(Z)V
    .registers 6

    .line 2039
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_d

    const-wide/16 v2, 0x1

    :cond_d
    const/4 p1, 0x0

    .line 2041
    const-string v0, "CompileAvInterleave"

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setEnableCompileVboost(Z)V
    .registers 6

    .line 2051
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_d

    const-wide/16 v2, 0x1

    :cond_d
    const/4 p1, 0x0

    .line 2053
    const-string v0, "EnableCompileVboost"

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setEnableInterLeave(Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2033
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_d

    const-wide/16 v2, 0x1

    :cond_d
    const/4 p1, 0x0

    .line 2035
    const-string v0, "CompileInterleave"

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setEnableMultipleAudioFilter(Z)V
    .registers 6

    .line 1337
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1338
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEnableMultipleAudioFilter(JZ)V

    return-void
.end method

.method public setEnableRemuxVideo(Z)V
    .registers 6

    .line 2027
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 2028
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEnableRemuxVideo(JZ)V

    return-void
.end method

.method public setEncGopSize(I)V
    .registers 5

    .line 1769
    const-string v0, "video gop size"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setEncoderParallel(Z)V
    .registers 6

    .line 1997
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1998
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEncoderParallel(JZ)V

    return-void
.end method

.method public setEngineCompilePath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1738
    const-string v0, "CompilePath"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1739
    const-string p1, "CompilePathWav"

    invoke-virtual {p0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExpandLastFrame(Z)V
    .registers 6

    .line 1987
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1988
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetExpandLastFrame(JZ)V

    return-void
.end method

.method public setExtTrackSeqIn(III)I
    .registers 10

    .line 1269
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1271
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetSubTrackSeqIn(JIII)I

    move-result p0

    return p0
.end method

.method public setFilterParam(ILjava/lang/String;Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I
    .registers 10

    .line 1383
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1384
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I

    move-result p0

    return p0
.end method

.method public setFilterParam(ILjava/lang/String;Lcom/ss/android/vesdk/VEStickerAnimator;)I
    .registers 10

    .line 1378
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1379
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/VEStickerAnimator;)I

    move-result p0

    return p0
.end method

.method public setFilterParam(ILjava/lang/String;Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I
    .registers 10

    .line 1373
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1374
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    move-result p0

    return p0
.end method

.method public setFilterParam(ILjava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 1363
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1364
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetFilterParam(JILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setFilterParam(ILjava/lang/String;[B)I
    .registers 10

    .line 1368
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1369
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetFilterParam2(JILjava/lang/String;[B)I

    move-result p0

    return p0
.end method

.method public setForceDetectForFirstFrameByClip(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    const/4 p1, 0x0

    .line 1858
    const-string v2, "force detect for first frame by clip"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setFrameTrace(Ljava/lang/String;I)Z
    .registers 7

    .line 2079
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    .line 2080
    :cond_a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeFrameTrace(JLjava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v3
.end method

.method public setHeightWidthRatio(F)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    .line 1884
    const-string v1, "engine height width ratio"

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;F)V

    :cond_b
    return-void
.end method

.method public setHostTrackIndex(I)V
    .registers 2

    .line 2870
    iput p1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    return-void
.end method

.method public setImageResizeinfo(IIII)V
    .registers 9

    const/4 v0, 0x0

    if-lez p1, :cond_9

    .line 1874
    const-string v1, "image_load_extend_width"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_9
    if-lez p2, :cond_11

    .line 1876
    const-string p1, "image_load_extend_height"

    int-to-long v1, p2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1878
    :cond_11
    const-string p1, "image_resize_fill_mode"

    int-to-long p2, p3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1879
    const-string p1, "image_resize_algorithm"

    int-to-long p2, p4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setKeyFrameParam(IIILjava/lang/String;)I
    .registers 12

    .line 2631
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 2634
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetKeyFrameParam(JIIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setKeyFramePoints([I)V
    .registers 7

    .line 2070
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 2071
    :cond_9
    array-length v0, p1

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    .line 2072
    :goto_e
    array-length v3, p1

    if-ge v2, v3, :cond_1b

    .line 2073
    aget v3, p1, v2

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2075
    :cond_1b
    const-string p1, "compileKeyFramePoints"

    invoke-virtual {p0, v1, p1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;[J)V

    return-void
.end method

.method public setLooping(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    const/4 p1, 0x1

    .line 1822
    const-string v2, "engine loop play"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setMaleMakeupState(Z)I
    .registers 6

    .line 2932
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2935
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetMaleMakeupState(JZ)I

    move-result p0

    return p0
.end method

.method public setMaxWidthHeight(II)V
    .registers 7

    const/4 v0, 0x0

    if-lez p1, :cond_9

    .line 1867
    const-string v1, "engine max video width"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_9
    if-lez p2, :cond_11

    .line 1869
    const-string p1, "engine max video height"

    int-to-long v1, p2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public setMessageCenterListener(Lcom/ss/android/vesdk/VEListener$VEMessageCenterListener;)I
    .registers 6

    .line 2834
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2837
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetMessageCenterListener(JLcom/ss/android/vesdk/VEListener$VEMessageCenterListener;)I

    move-result p0

    return p0
.end method

.method public setMultiComposer(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    const/4 p1, 0x0

    .line 1862
    const-string v2, "is multi composer filter"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setNativeHandler(J)V
    .registers 3

    const-wide/16 p1, 0x0

    .line 542
    iput-wide p1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    return-void
.end method

.method public setOption(ILjava/lang/String;F)V
    .registers 10

    .line 2315
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .line 2318
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOption(JILjava/lang/String;F)V

    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .registers 12

    .line 2308
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    .line 2311
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOption(JILjava/lang/String;J)V

    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 2294
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2297
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOption(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOption(ILjava/lang/String;[I)V
    .registers 10

    .line 2301
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2304
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOptionIntArray(JILjava/lang/String;[I)V

    return-void
.end method

.method public setOption(ILjava/lang/String;[J)V
    .registers 10

    .line 2329
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2332
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOptionLongArray(JILjava/lang/String;[J)V

    return-void
.end method

.method public setOption(I[Ljava/lang/String;[J)V
    .registers 10

    .line 2322
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2325
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOptionArray(JI[Ljava/lang/String;[J)V

    return-void
.end method

.method public setPageMode(I)V
    .registers 5

    .line 1826
    const-string v0, "engine page mode"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setPreviewFps(I)I
    .registers 6

    .line 1898
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1900
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetPreviewFps(JI)V

    const/4 p0, 0x0

    return p0
.end method

.method public setPreviewScaleMode(I)I
    .registers 6

    .line 1913
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1917
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetPreviewScaleMode(JI)I

    move-result p0

    return p0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .registers 6

    .line 1977
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1978
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetPreviewSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method public setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 7

    .line 1982
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1983
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetPreviewSurfaceBitmap(JLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setResizer(IFF)V
    .registers 7

    .line 1743
    const-string v0, "filter mode"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1744
    const-string v0, "resizer offset x percent"

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;F)V

    .line 1745
    const-string p2, "resizer offset y percent"

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;F)V

    return-void
.end method

.method public setScaleMode(I)V
    .registers 5

    .line 1846
    const-string v0, "filter mode"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setSpeedRatio(F)V
    .registers 6

    .line 2022
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 2023
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetSpeedRatio(JF)V

    return-void
.end method

.method public setSurfaceSize(II)V
    .registers 7

    .line 2017
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 2018
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetSurfaceSize(JII)V

    return-void
.end method

.method public setTimeRange(III)I
    .registers 10

    .line 1651
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1654
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTimeRange(JIII)I

    move-result p0

    return p0
.end method

.method public setTrackDurationType(III)I
    .registers 10

    .line 2740
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2744
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTrackDurationType(JIII)I

    move-result p0

    return p0
.end method

.method public setTrackFilterEnable(IZZ)I
    .registers 10

    .line 2623
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2627
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTrackFilterEnable(JIZZ)I

    move-result p0

    return p0
.end method

.method public setTrackLayer(III)I
    .registers 10

    .line 1263
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1265
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTrackLayer(JIII)I

    move-result p0

    return p0
.end method

.method public setTrackMinMaxDuration(IIII)I
    .registers 12

    .line 2732
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2736
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTrackMinMaxDuration(JIIII)I

    move-result p0

    return p0
.end method

.method public setTrackVolume(IIF)Z
    .registers 10

    .line 2336
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2339
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTrackVolume(JIIF)Z

    move-result p0

    return p0
.end method

.method public setTransitionAt(IJLjava/lang/String;)I
    .registers 12

    .line 2716
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 2720
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTransitionAt(JIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setUseHwEnc(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    const/4 p1, 0x0

    .line 1765
    const-string v2, "HardwareVideo"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setUseLargeMattingModel(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    const/4 p1, 0x0

    .line 1688
    const-string v2, "UseLargeMattingModel"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setUsrRotate(I)V
    .registers 7

    const-wide/16 v0, 0x0

    .line 1801
    const-string v2, "usr rotate"

    const/4 v3, 0x0

    if-eqz p1, :cond_29

    const/16 v4, 0x5a

    if-eq p1, v4, :cond_23

    const/16 v4, 0xb4

    if-eq p1, v4, :cond_1d

    const/16 v4, 0x10e

    if-eq p1, v4, :cond_17

    .line 1815
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void

    :cond_17
    const-wide/16 v0, 0x3

    .line 1812
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void

    :cond_1d
    const-wide/16 v0, 0x2

    .line 1809
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void

    :cond_23
    const-wide/16 v0, 0x1

    .line 1806
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void

    .line 1803
    :cond_29
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setVideoBackGroundColor(I)V
    .registers 6

    .line 2160
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 2161
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetVideoBackGroundColor(JI)V

    return-void
.end method

.method public setVideoCompileBitrate(II)V
    .registers 6

    .line 1698
    const-string v0, "CompileBitrateMode"

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    .line 1699
    const-string v0, "CompileBitrateValue"

    int-to-long v1, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setViewPort(IIII)V
    .registers 12

    .line 2012
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2013
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetViewPort(JIIII)V

    return-void
.end method

.method public setWaterMark([Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)V
    .registers 7

    .line 2002
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 2003
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetWaterMark(J[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)V

    return-void
.end method

.method public setWatermarkWidthHeight(II)V
    .registers 7

    const/4 v0, 0x0

    if-lez p1, :cond_9

    .line 1889
    const-string v1, "engine watermark video width"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_9
    if-lez p2, :cond_11

    .line 1891
    const-string p1, "engine watermark video height"

    int-to-long v1, p2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public setWidthHeight(II)V
    .registers 7

    const/4 v0, 0x0

    if-lez p1, :cond_9

    .line 1852
    const-string v1, "engine video width"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_9
    if-lez p2, :cond_11

    .line 1854
    const-string p1, "engine video height"

    int-to-long v1, p2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public start()I
    .registers 5

    .line 2181
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2182
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeStart(J)I

    move-result p0

    return p0
.end method

.method public startEffectMonitor()I
    .registers 5

    .line 2909
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2912
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeStartEffectMonitor(J)I

    const/4 p0, 0x0

    return p0
.end method

.method public stop()I
    .registers 5

    .line 2201
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2202
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeStop(J)I

    move-result p0

    return p0
.end method

.method public stopEffectMonitor()I
    .registers 5

    .line 2917
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2920
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeStopEffectMonitor(J)I

    const/4 p0, 0x0

    return p0
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method

.method public suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
    .registers 7

    .line 3074
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 3077
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/VEGestureEvent;->ANY_SUPPORTED:Lcom/ss/android/vesdk/VEGestureEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 p1, -0x1

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 3078
    :goto_1c
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSuspendGestureRecognizer(JIZ)Z

    move-result p0

    return p0
.end method

.method public switchResourceLoadMode(ZI)I
    .registers 7

    .line 2967
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2970
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSwitchResourceLoadMode(JZI)I

    move-result p0

    return p0
.end method

.method public uninitAudioExtendToFile()I
    .registers 3

    .line 998
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUninitAudioExtendToFile(J)I

    move-result p0

    return p0
.end method

.method public updateAICutOutClipParam(IILcom/ss/android/vesdk/clipparam/VEAICutOutClipParam;)I
    .registers 10

    .line 2638
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 2641
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateAICutOutClipParam(JIILcom/ss/android/vesdk/clipparam/VEAICutOutClipParam;)I

    move-result p0

    return p0
.end method

.method public updateAlgorithmRuntimeParam(IF)I
    .registers 7

    .line 2939
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2942
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateAlgorithmRuntimeParam(JIF)I

    move-result p0

    return p0
.end method

.method public updateAudioTrack(IIIIIZII)I
    .registers 20

    .line 1189
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-gez p1, :cond_f

    const/16 p0, -0x64

    return p0

    :cond_f
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 1194
    invoke-direct/range {v0 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateAudioTrack2(JIIIIIZII)I

    move-result p0

    return p0
.end method

.method public updateAudioTrack(IIIIIZZ)I
    .registers 18

    .line 1166
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-gez p1, :cond_f

    const/16 p0, -0x64

    return p0

    :cond_f
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1171
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateAudioTrack(JIIIIIZZ)I

    move-result p0

    return p0
.end method

.method public updateCanvasResolution(II)I
    .registers 7

    .line 2533
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2537
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateCanvasResolution(JII)I

    move-result p0

    return p0
.end method

.method public updateClipsSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I
    .registers 12

    .line 2525
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2529
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateClipsSourceParam(JII[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    move-result p0

    return p0
.end method

.method public updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 12

    .line 2517
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2521
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateClipsTimelineParam(JII[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 10

    .line 3002
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 3005
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateComposerNode(JLjava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public updateFilterParam(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 10

    .line 2567
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 2570
    :cond_b
    iget v0, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_101

    const/16 v3, 0x8

    if-eq v0, v3, :cond_f6

    const/16 v3, 0xc

    if-eq v0, v3, :cond_eb

    const/16 v3, 0xd

    if-eq v0, v3, :cond_e0

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_d5

    const/16 v3, 0x21

    if-eq v0, v3, :cond_ca

    const/16 v3, 0x23

    if-eq v0, v3, :cond_bf

    const/16 v3, 0x24

    if-eq v0, v3, :cond_b4

    const/16 v3, -0x64

    packed-switch v0, :pswitch_data_10c

    return v3

    .line 2610
    :pswitch_32
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateAmazingFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;)I

    move-result p0

    return p0

    :pswitch_3d
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2608
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEImageAddFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateImageAddFilterParam(JIILcom/ss/android/vesdk/filterparam/VEImageAddFilterParam;)I

    move-result p0

    return p0

    :pswitch_48
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2606
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEImageTransformFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateImageTransformFilterParam(JIILcom/ss/android/vesdk/filterparam/VEImageTransformFilterParam;)I

    move-result p0

    return p0

    :pswitch_53
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2604
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateCropFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;)I

    move-result p0

    return p0

    :pswitch_5e
    move-object v0, p0

    move p0, v3

    move v3, p1

    move v4, p2

    goto :goto_95

    :pswitch_63
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2575
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEVideoAjustmentFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateQualityFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoAjustmentFilterParam;)I

    move-result p0

    return p0

    :pswitch_6e
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2577
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEEffectHdrFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateEffectHdrFilterParam(JIILcom/ss/android/vesdk/filterparam/VEEffectHdrFilterParam;)I

    move-result p0

    return p0

    :pswitch_79
    move-object v0, p0

    move v4, p2

    move p0, v3

    move v3, p1

    .line 2587
    instance-of p1, p3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    if-eqz p1, :cond_89

    .line 2588
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateVideoTransformFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;)I

    move-result p0

    return p0

    .line 2589
    :cond_89
    instance-of p1, p3, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    if-eqz p1, :cond_95

    .line 2590
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateCanvasFilterParam(JIILcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I

    move-result p0

    return p0

    .line 2593
    :cond_95
    :goto_95
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;

    .line 2594
    invoke-virtual {v5}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->isValid()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 2595
    invoke-virtual {v5}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->isOverallComposer()Z

    move-result p0

    if-eqz p0, :cond_ab

    .line 2596
    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateEffectComposerParam(JIILcom/ss/android/vesdk/filterparam/VEComposerFilterParam;)I

    move-result p0

    return p0

    .line 2598
    :cond_ab
    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEMultiComposerFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateMultiEffectComposerParam(JIILcom/ss/android/vesdk/filterparam/VEMultiComposerFilterParam;)I

    move-result p0

    :cond_b3
    return p0

    :cond_b4
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2616
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEColorHslFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateColorAdjustHslFilterParam(JIILcom/ss/android/vesdk/filterparam/VEColorHslFilterParam;)I

    move-result p0

    return p0

    :cond_bf
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2614
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEVideoLensOneKeyHdrParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateLensOneKeyHdrFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoLensOneKeyHdrParam;)I

    move-result p0

    return p0

    :cond_ca
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2579
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VELensHdrFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateLensHdrFilterParam(JIILcom/ss/android/vesdk/filterparam/VELensHdrFilterParam;)I

    move-result p0

    return p0

    :cond_d5
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2612
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateVideoStabFilterParam(JIILcom/ss/android/vesdk/filterparam/VEVideoStableFilterParam;)I

    move-result p0

    return p0

    :cond_e0
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2585
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateReshapeFilterParam(JIILcom/ss/android/vesdk/filterparam/VEReshapeFilterParam;)I

    move-result p0

    return p0

    :cond_eb
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2583
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateBeautyFilterParam(JIILcom/ss/android/vesdk/filterparam/VEBeautyFilterParam;)I

    move-result p0

    return p0

    :cond_f6
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2581
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateEffectFilterParam(JIILcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    move-result p0

    return p0

    :cond_101
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2573
    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEColorFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateColorFilterParam(JIILcom/ss/android/vesdk/filterparam/VEColorFilterParam;)I

    move-result p0

    return p0

    :pswitch_data_10c
    .packed-switch 0xf
        :pswitch_79
        :pswitch_6e
        :pswitch_63
        :pswitch_5e
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_32
    .end packed-switch
.end method

.method public updateFilterTime(IIII)I
    .registers 12

    .line 2700
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2704
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateFilterTime(JIIII)I

    move-result p0

    return p0
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 12

    .line 3023
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 3026
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateMultiComposerNodes(JI[Ljava/lang/String;[Ljava/lang/String;[F)I

    move-result p0

    return p0
.end method

.method public updateResolution(IIII)V
    .registers 12

    .line 1840
    const-string v0, "engine preivew width percent"

    const-string v1, "engine preivew height percent"

    const-string v2, "engine preivew width"

    const-string v3, "engine preivew height"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    int-to-long p1, p2

    int-to-long v3, p3

    int-to-long p3, p4

    const/4 v5, 0x4

    .line 1841
    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v1, 0x1

    aput-wide p1, v5, v1

    const/4 p1, 0x2

    aput-wide v3, v5, p1

    const/4 p1, 0x3

    aput-wide p3, v5, p1

    .line 1842
    invoke-virtual {p0, v1, v0, v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(I[Ljava/lang/String;[J)V

    return-void
.end method

.method public updateScene([Ljava/lang/String;[I[I)I
    .registers 10

    .line 1006
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1009
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateScene(J[Ljava/lang/String;[I[I)I

    move-result p0

    if-gez p0, :cond_16

    return p0

    .line 1013
    :cond_16
    iput p0, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public updateScene([Ljava/lang/String;[I[I[Z[Ljava/lang/String;)I
    .registers 14

    .line 1019
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1022
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateSceneLoadCache(J[Ljava/lang/String;[I[I[Z[Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_18

    return p0

    .line 1026
    :cond_18
    iput p0, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public updateSceneFileOrder(Lcom/ss/android/vesdk/VETimelineParams;)I
    .registers 6

    .line 1041
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1045
    :cond_b
    iget-object p1, p1, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateSceneFileOrder(J[I)I

    move-result p0

    return p0
.end method

.method public updateSenceTime(Lcom/ss/android/vesdk/VETimelineParams;)I
    .registers 10

    .line 1032
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 1036
    :cond_b
    iget-object v3, p1, Lcom/ss/android/vesdk/VETimelineParams;->enable:[Z

    iget-object v4, p1, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    iget-object v5, p1, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    iget-object v0, p1, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 1037
    invoke-static {v0}, Lcom/ss/android/vesdk/ROTATE_DEGREE;->toIntArray([Lcom/ss/android/vesdk/ROTATE_DEGREE;)[I

    move-result-object v6

    iget-object v7, p1, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    move-object v0, p0

    .line 1036
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateSceneTime(J[Z[I[I[I[D)I

    move-result p0

    return p0
.end method

.method public updateTrackClips(II[Ljava/lang/String;)I
    .registers 10

    .line 2350
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 2353
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateTrackClip(JII[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateTrackFilter(IIZ)I
    .registers 10

    .line 2357
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2360
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateTrackFilter(JIIZ)I

    move-result p0

    return p0
.end method

.method public updateTrackFilterDuration(IIZJ)I
    .registers 14

    .line 2364
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .line 2367
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateTrackFilterDuration(JIIZJ)I

    move-result p0

    return p0
.end method
