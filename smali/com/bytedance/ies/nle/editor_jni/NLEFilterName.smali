.class public Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 292
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEFilterName()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->swigCPtr:J

    return-void
.end method

.method public static getAI_MATTING()Ljava/lang/String;
    .registers 1

    .line 218
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_AI_MATTING_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAUDIO_COMMON_FILTER()Ljava/lang/String;
    .registers 1

    .line 162
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_AUDIO_COMMON_FILTER_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAUDIO_DSP_FILTER()Ljava/lang/String;
    .registers 1

    .line 190
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_AUDIO_DSP_FILTER_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAUDIO_FADE_FILTER()Ljava/lang/String;
    .registers 1

    .line 204
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_AUDIO_FADE_FILTER_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAUDIO_LOUDNESS_BALANCE_FILTER()Ljava/lang/String;
    .registers 1

    .line 183
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_AUDIO_LOUDNESS_BALANCE_FILTER_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAUDIO_SAMI_FILTER()Ljava/lang/String;
    .registers 1

    .line 211
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_AUDIO_SAMI_FILTER_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAUDIO_VOLUME_FILTER()Ljava/lang/String;
    .registers 1

    .line 197
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_AUDIO_VOLUME_FILTER_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBEAUTFY_FILTER()Ljava/lang/String;
    .registers 1

    .line 246
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_BEAUTFY_FILTER_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBEAUTY()Ljava/lang/String;
    .registers 1

    .line 148
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_BEAUTY_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBRIGHTNESS()Ljava/lang/String;
    .registers 1

    .line 50
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_BRIGHTNESS_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCOLOR_CURVES()Ljava/lang/String;
    .registers 1

    .line 274
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_COLOR_CURVES_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCOMMON()Ljava/lang/String;
    .registers 1

    .line 43
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_COMMON_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCONTRACT()Ljava/lang/String;
    .registers 1

    .line 57
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_CONTRACT_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->swigCPtr:J

    return-wide v0
.end method

.method public static getEFFECT_STICKER()Ljava/lang/String;
    .registers 1

    .line 239
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_EFFECT_STICKER_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFADE()Ljava/lang/String;
    .registers 1

    .line 106
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_FADE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFIGURE_SLIM()Ljava/lang/String;
    .registers 1

    .line 260
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_FIGURE_SLIM_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFIGURE_STRETCH()Ljava/lang/String;
    .registers 1

    .line 253
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_FIGURE_STRETCH_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFIGURE_ZOOM()Ljava/lang/String;
    .registers 1

    .line 267
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_FIGURE_ZOOM_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHDR()Ljava/lang/String;
    .registers 1

    .line 134
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_HDR_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHIGHLIGHT()Ljava/lang/String;
    .registers 1

    .line 78
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_HIGHLIGHT_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHSL()Ljava/lang/String;
    .registers 1

    .line 232
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_HSL_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLENS_HDR()Ljava/lang/String;
    .registers 1

    .line 141
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_LENS_HDR_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLIGHT_SENSATION()Ljava/lang/String;
    .registers 1

    .line 113
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_LIGHT_SENSATION_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLOG_COLOR_WHEELS()Ljava/lang/String;
    .registers 1

    .line 288
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_LOG_COLOR_WHEELS_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLUT()Ljava/lang/String;
    .registers 1

    .line 225
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_LUT_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPARTICLE()Ljava/lang/String;
    .registers 1

    .line 127
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_PARTICLE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPRIMARY_COLOR_WHEELS()Ljava/lang/String;
    .registers 1

    .line 281
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_PRIMARY_COLOR_WHEELS_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRESHAPE()Ljava/lang/String;
    .registers 1

    .line 155
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_RESHAPE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSATURATION()Ljava/lang/String;
    .registers 1

    .line 64
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_SATURATION_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHADOW()Ljava/lang/String;
    .registers 1

    .line 85
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_SHADOW_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHARPEN()Ljava/lang/String;
    .registers 1

    .line 71
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_SHARPEN_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTEMPERATURE()Ljava/lang/String;
    .registers 1

    .line 92
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_TEMPERATURE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTONE()Ljava/lang/String;
    .registers 1

    .line 99
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_TONE_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVIDEO_EFFECT()Ljava/lang/String;
    .registers 1

    .line 169
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_VIDEO_EFFECT_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVIDEO_LENS_HDR()Ljava/lang/String;
    .registers 1

    .line 176
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_VIDEO_LENS_HDR_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVIGNETTING()Ljava/lang/String;
    .registers 1

    .line 120
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEFilterName_VIGNETTING_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEFilterName(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 37
    :cond_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->delete()V

    return-void
.end method
