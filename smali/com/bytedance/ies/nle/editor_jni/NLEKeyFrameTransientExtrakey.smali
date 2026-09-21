.class public Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 136
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_NLEKeyFrameTransientExtrakey()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->swigCPtr:J

    return-wide v0
.end method

.method public static getChromaChannelIntensity()Ljava/lang/String;
    .registers 1

    .line 128
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_ChromaChannelIntensity_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChromaChannelShadow()Ljava/lang/String;
    .registers 1

    .line 132
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_ChromaChannelShadow_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilterIntensity()Ljava/lang/String;
    .registers 1

    .line 92
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_FilterIntensity_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaskCenterX()Ljava/lang/String;
    .registers 1

    .line 72
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_MaskCenterX_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaskCenterY()Ljava/lang/String;
    .registers 1

    .line 76
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_MaskCenterY_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaskHeight()Ljava/lang/String;
    .registers 1

    .line 68
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_MaskHeight_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaskRotation()Ljava/lang/String;
    .registers 1

    .line 80
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_MaskRotation_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaskRoundCorner()Ljava/lang/String;
    .registers 1

    .line 88
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_MaskRoundCorner_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaskWidth()Ljava/lang/String;
    .registers 1

    .line 64
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_MaskWidth_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaskfeather()Ljava/lang/String;
    .registers 1

    .line 84
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_Maskfeather_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotAlpha()Ljava/lang/String;
    .registers 1

    .line 56
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_SlotAlpha_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotRotation()Ljava/lang/String;
    .registers 1

    .line 52
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_SlotRotation_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotScale()Ljava/lang/String;
    .registers 1

    .line 48
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_SlotScale_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotVolume()Ljava/lang/String;
    .registers 1

    .line 60
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_SlotVolume_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotX()Ljava/lang/String;
    .registers 1

    .line 40
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_SlotX_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotY()Ljava/lang/String;
    .registers 1

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_SlotY_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextBackgroundColor()Ljava/lang/String;
    .registers 1

    .line 100
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_TextBackgroundColor_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextColor()Ljava/lang/String;
    .registers 1

    .line 96
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_TextColor_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextOutlineColor()Ljava/lang/String;
    .registers 1

    .line 108
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_TextOutlineColor_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextOutlineWidth()Ljava/lang/String;
    .registers 1

    .line 124
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_TextOutlineWidth_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextShadowColor()Ljava/lang/String;
    .registers 1

    .line 104
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_TextShadowColor_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextShadowOffsetX()Ljava/lang/String;
    .registers 1

    .line 116
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_TextShadowOffsetX_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextShadowOffsetY()Ljava/lang/String;
    .registers 1

    .line 120
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_TextShadowOffsetY_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextShadowSmoothing()Ljava/lang/String;
    .registers 1

    .line 112
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->NLEKeyFrameTransientExtrakey_TextShadowSmoothing_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_NLEKeyFrameTransientExtrakey(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->delete()V

    return-void
.end method
