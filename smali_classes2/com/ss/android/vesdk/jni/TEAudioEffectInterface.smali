.class public Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mNative:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    return-void
.end method

.method private native nativeUpdateAudioDspFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioDspFilterParam;)I
.end method

.method private native nativeUpdateAudioEffectFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioEffectFilterParam;)I
.end method

.method private native nativeUpdateAudioFadeFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;)I
.end method

.method private native nativeUpdateAudioLoudnessBalanceFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioLoudnessBalanceFilter;)I
.end method

.method private native nativeUpdateAudioNoiseFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioNoiseFilterParam;)I
.end method

.method private native nativeUpdateAudioSamiFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam;)I
.end method

.method private native nativeUpdateAudioVolumeFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;)I
.end method


# virtual methods
.method public clearNative()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    return-void
.end method

.method public updateAudioFilterParam(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 11

    .line 29
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 33
    :cond_b
    iget-object v0, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string v1, "audio volume filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 34
    iget-wide v2, p0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    move-object v6, p3

    check-cast v6, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->nativeUpdateAudioVolumeFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;)I

    move-result p0

    return p0

    :cond_22
    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 36
    iget-object p0, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string p1, "audio fading"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 37
    iget-wide v1, v0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->nativeUpdateAudioFadeFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;)I

    move-result p0

    return p0

    .line 39
    :cond_39
    iget-object p0, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string p1, "audio effect"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 40
    iget-wide v1, v0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEAudioEffectFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->nativeUpdateAudioEffectFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioEffectFilterParam;)I

    move-result p0

    return p0

    .line 42
    :cond_4d
    iget-object p0, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string p1, "audio noise"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 43
    iget-wide v1, v0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEAudioNoiseFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->nativeUpdateAudioNoiseFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioNoiseFilterParam;)I

    move-result p0

    return p0

    .line 45
    :cond_61
    iget-object p0, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string p1, "loudness balance"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    .line 46
    iget-wide v1, v0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEAudioLoudnessBalanceFilter;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->nativeUpdateAudioLoudnessBalanceFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioLoudnessBalanceFilter;)I

    move-result p0

    return p0

    .line 48
    :cond_75
    iget-object p0, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string p1, "audio dsp filter"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    .line 49
    iget-wide v1, v0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEAudioDspFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->nativeUpdateAudioDspFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioDspFilterParam;)I

    move-result p0

    return p0

    .line 51
    :cond_89
    iget-object p0, p3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const-string p1, "audio sami filter"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9d

    .line 52
    iget-wide v1, v0, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->mNative:J

    move-object v5, p3

    check-cast v5, Lcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam;

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEAudioEffectInterface;->nativeUpdateAudioSamiFilterParam(JIILcom/ss/android/vesdk/filterparam/VEAudioSamiFilterParam;)I

    move-result p0

    return p0

    :cond_9d
    const/4 p0, -0x1

    return p0
.end method
