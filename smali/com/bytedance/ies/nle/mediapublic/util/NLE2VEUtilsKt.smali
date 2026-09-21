.class public final Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final toNLEClipAlgorithmParam(Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;)Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;-><init>()V

    .line 449
    iget v1, p0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->index:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->setIndex(I)V

    .line 450
    iget v1, p0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->bingoEffect:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->setBingoEffect(I)V

    .line 451
    iget v1, p0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->range:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->setRange(J)V

    .line 452
    iget v1, p0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->rotate:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->setRotate(I)V

    .line 453
    iget v1, p0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->trimIn:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->setTrimIn(J)V

    .line 454
    iget p0, p0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->trimOut:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->setTrimOut(J)V

    return-object v0
.end method

.method public static final toNLEEncodeBitrateMode(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$8:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1c

    .line 100
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    return-object p0

    .line 99
    :cond_1c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_VBR:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    return-object p0

    .line 98
    :cond_1f
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_QP:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    return-object p0

    .line 97
    :cond_22
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    return-object p0

    .line 96
    :cond_25
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    return-object p0
.end method

.method public static final toNLEEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$11:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_32

    .line 142
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 141
    :pswitch_13
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_VERYSLOW:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 140
    :pswitch_16
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_VERYFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 139
    :pswitch_19
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 138
    :pswitch_1c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SUPERFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 137
    :pswitch_1f
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SLOWER:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 136
    :pswitch_22
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SLOW:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 135
    :pswitch_25
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_PLACEBO:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 134
    :pswitch_28
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_MEDIUM:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 133
    :pswitch_2b
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_FASTER:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 132
    :pswitch_2e
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_FAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static final toNLEEncodePreset(Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$10:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_32

    .line 126
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 125
    :pswitch_13
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_VERYSLOW:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 124
    :pswitch_16
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_VERYFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 123
    :pswitch_19
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 122
    :pswitch_1c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SUPERFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 121
    :pswitch_1f
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SLOWER:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 120
    :pswitch_22
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SLOW:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 119
    :pswitch_25
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_PLACEBO:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 118
    :pswitch_28
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_MEDIUM:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 117
    :pswitch_2b
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_FASTER:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    .line 116
    :pswitch_2e
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_FAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static final toNLEEncodeStandard(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    .line 60
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    return-object p0

    .line 59
    :cond_19
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->ENCODE_STANDARD_MPEG4:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    return-object p0

    .line 58
    :cond_1c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    return-object p0

    .line 57
    :cond_1f
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    return-object p0
.end method

.method public static final toNLEMVAudioBean(Lcom/ss/android/vesdk/VEMVAudioInfo;)Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;-><init>()V

    .line 519
    iget-object v1, p0, Lcom/ss/android/vesdk/VEMVAudioInfo;->path:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;->setPath(Ljava/lang/String;)V

    .line 520
    :cond_11
    iget v1, p0, Lcom/ss/android/vesdk/VEMVAudioInfo;->trimIn:I

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;->setTrimIn(J)V

    .line 521
    iget p0, p0, Lcom/ss/android/vesdk/VEMVAudioInfo;->trimOut:I

    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;->setTrimOut(J)V

    return-object v0
.end method

.method public static final toNLEMVInfoBean(Lcom/ss/android/ttve/model/MVInfoBean;)Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;-><init>()V

    .line 501
    iget v1, p0, Lcom/ss/android/ttve/model/MVInfoBean;->width:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;->setWidth(I)V

    .line 502
    iget v1, p0, Lcom/ss/android/ttve/model/MVInfoBean;->height:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;->setHeight(I)V

    .line 503
    iget-object v1, p0, Lcom/ss/android/ttve/model/MVInfoBean;->resources:Ljava/util/ArrayList;

    if-eqz v1, :cond_4c

    .line 504
    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 607
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_44

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 608
    check-cast v5, Lcom/ss/android/ttve/model/MVResourceBean;

    .line 504
    const-string v6, "it"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEMVResourceBean(Lcom/ss/android/ttve/model/MVResourceBean;)Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_44
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/VecNLEMVResourceBean;

    invoke-direct {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLEMVResourceBean;-><init>(Ljava/lang/Iterable;)V

    .line 503
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;->setResources(Lcom/bytedance/ies/nle/editor_jni/VecNLEMVResourceBean;)V

    .line 505
    :cond_4c
    iget p0, p0, Lcom/ss/android/ttve/model/MVInfoBean;->fps:I

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;->setFps(I)V

    return-object v0
.end method

.method public static final toNLEMVResourceBean(Lcom/ss/android/ttve/model/MVResourceBean;)Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;-><init>()V

    .line 476
    iget-wide v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    double-to-int v1, v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setTrimIn(J)V

    .line 477
    iget-wide v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    double-to-int v1, v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setTrimOut(J)V

    .line 478
    iget-wide v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    double-to-int v1, v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setSeqIn(J)V

    .line 479
    iget-wide v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    double-to-int v1, v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setSeqOut(J)V

    .line 480
    iget-object v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setContent(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setType(Ljava/lang/String;)V

    .line 482
    iget v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setRid(I)V

    .line 483
    iget v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setTrackIndex(I)V

    .line 484
    iget v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->clipIndex:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setClipIndex(I)V

    .line 485
    iget v1, p0, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setIsLoop(I)V

    .line 486
    iget-boolean p0, p0, Lcom/ss/android/ttve/model/MVResourceBean;->isMute:Z

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->setIsMute(Z)V

    return-object v0
.end method

.method public static final toNLEPlayerState(Lcom/ss/android/vesdk/VEEditor$VEState;)Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_26

    .line 19
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->ANY:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object p0

    .line 18
    :pswitch_13
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->IDLE:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object p0

    .line 17
    :pswitch_16
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STOPPED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object p0

    .line 16
    :pswitch_19
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->SEEKING:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object p0

    .line 15
    :pswitch_1c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->PAUSED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object p0

    .line 14
    :pswitch_1f
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STARTED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object p0

    .line 13
    :pswitch_22
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->PREPARED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static final toNLERatio(Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;JJ)F
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3b

    cmp-long v0, p3, v0

    if-eqz v0, :cond_3b

    .line 558
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$19:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_38

    const/4 v0, 0x2

    if-eq p0, v0, :cond_34

    const/4 v0, 0x3

    if-eq p0, v0, :cond_31

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2a

    long-to-float p0, p1

    long-to-float p1, p3

    div-float/2addr p0, p1

    return p0

    :cond_2a
    const/high16 p0, 0x3f100000    # 0.5625f

    return p0

    :cond_2d
    const p0, 0x3fe38e39

    return p0

    :cond_31
    const/high16 p0, 0x3f400000    # 0.75f

    return p0

    :cond_34
    const p0, 0x3faaaaab

    return p0

    :cond_38
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 556
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "vWidth or vHeight can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toNLERotate(Lcom/ss/android/vesdk/ROTATE_DEGREE;)F
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$18:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_1b
    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_1e
    const/high16 p0, 0x43870000    # 270.0f

    return p0
.end method

.method public static final toNLEVideoCompileEncodeSettings(Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;-><init>()V

    .line 321
    iget-boolean v1, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->setUseHWEncoder(Z)V

    .line 322
    iget-boolean v1, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->enableHwBufferEncode:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->setEnableHwBufferEncode(Z)V

    .line 323
    iget-boolean v1, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->isSupportHWEncoder:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->setIsSupportHWEncoder(Z)V

    .line 324
    iget-object v1, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    const-string v2, "mHWEncodeSetting"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoHWEncodeSettings(Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->setMHWEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;)V

    .line 325
    iget-object p0, p0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    const-string v1, "mSWEncodeSetting"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoSWEncodeSettings(Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;->setMSWEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;)V

    return-object v0
.end method

.method public static final toNLEVideoEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1c

    .line 80
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0

    .line 79
    :cond_1c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0

    .line 78
    :cond_1f
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0

    .line 77
    :cond_22
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0

    .line 76
    :cond_25
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0
.end method

.method public static final toNLEVideoEncodeProfile(Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1c

    .line 70
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0

    .line 69
    :cond_1c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0

    .line 68
    :cond_1f
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0

    .line 67
    :cond_22
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0

    .line 66
    :cond_25
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    return-object p0
.end method

.method public static final toNLEVideoEncodeProfile(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$7:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1c

    .line 90
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 89
    :cond_1c
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 88
    :cond_1f
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 87
    :cond_22
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 86
    :cond_25
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0
.end method

.method public static final toNLEVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    const/4 v2, -0x1

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_19

    :cond_11
    sget-object v3, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$15:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_19
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_28

    const/4 v3, 0x3

    if-eq v1, v3, :cond_25

    .line 335
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    goto :goto_2d

    .line 334
    :cond_25
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->COMPILE_TYPE_HIGH_GIF:Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    goto :goto_2d

    .line 333
    :cond_28
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->COMPILE_TYPE_GIF:Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    goto :goto_2d

    .line 332
    :cond_2b
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    .line 331
    :goto_2d
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setCompileType(Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;)V

    .line 337
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getRotate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setRotate(I)V

    .line 338
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setResizeMode(I)V

    .line 339
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setResizeX(F)V

    .line 340
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setResizeY(F)V

    .line 341
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setSpeed(F)V

    .line 342
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v1, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setOutputSize(Lcom/bytedance/ies/nle/editor_jni/PairIntInt;)V

    .line 343
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v1, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setWatermarkSize(Lcom/bytedance/ies/nle/editor_jni/PairIntInt;)V

    .line 345
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBitrateMode()Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    move-result-object v1

    const-string v3, "bitrateMode"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEEncodeBitrateMode(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setBitrateMode(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;)V

    .line 346
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setBps(I)V

    .line 347
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwCRF()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setSwCRF(I)V

    .line 348
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwQP()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setSwQP(I)V

    .line 349
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getFps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setFps(I)V

    .line 350
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getGopSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setGopSize(I)V

    .line 351
    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwPreset()I

    move-result v3

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setSwPreset(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;)V

    .line 353
    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeStandard()I

    move-result v3

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEEncodeStandard(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEncodeStandard(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;)V

    .line 355
    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeProfile()I

    move-result v3

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEncodeProfile(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;)V

    .line 356
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwMaxRate()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setSwMaxrate(J)V

    .line 357
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHwEnc()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setIsSupportHWEncoder(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableHwBufferEncode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEnableHwBufferEncode(Z)V

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEnableByteVCRemuxVideo(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableRemuxVideo()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEnableRemuxVideo(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableRemuxVideoForRotation()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEnableRemuxVideoForRotation(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableRemuxVideoForShoot()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEnableRemuxVideoForShoot(Z)V

    .line 363
    invoke-virtual {v0, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEnableRemuxVideoRes(I)V

    .line 364
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableInterLeave()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setEnableInterLeave(Z)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setHasBFrame(Z)V

    .line 366
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkParam()Lcom/ss/android/vesdk/VEWatermarkParam;

    move-result-object v1

    if-eqz v1, :cond_132

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkParam()Lcom/ss/android/vesdk/VEWatermarkParam;

    move-result-object v1

    const-string v2, "watermarkParam"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMWatermarkParam(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)V

    .line 368
    :cond_132
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkCompileEncodeSetting()Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    move-result-object v1

    const-string v2, "watermarkCompileEncodeSetting"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoCompileEncodeSettings(Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMVideoWatermarkCompileEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)V

    .line 369
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoCompileEncodeSetting()Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    move-result-object v1

    const-string v2, "videoCompileEncodeSetting"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoCompileEncodeSettings(Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMVideoCompileEncodeSetting(Lcom/bytedance/ies/nle/editor_jni/NLEVideoCompileEncodeSettings;)V

    .line 370
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isOptRemuxWithCopy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMOptRemuxWithCopy(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_166

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMDescription(Ljava/lang/String;)V

    .line 372
    :cond_166
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_173

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMComment(Ljava/lang/String;)V

    .line 373
    :cond_173
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isCompileSoftInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMCompileSoftInfo(Z)V

    .line 374
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isRecordingMp4()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMRecordingMp4(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isReEncodeOpt()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMReEncodeOpt(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResolutionAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMResolutionAlign(I)V

    .line 377
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getKeyFramePoints()[I

    move-result-object v1

    if-eqz v1, :cond_1a1

    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/VecInt;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getKeyFramePoints()[I

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/bytedance/ies/nle/editor_jni/VecInt;-><init>([I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->setMKeyFramePoints(Lcom/bytedance/ies/nle/editor_jni/VecInt;)V

    :cond_1a1
    return-object v0
.end method

.method public static final toNLEVideoHWEncodeSettings(Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;-><init>()V

    .line 293
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setMBitrate(J)V

    .line 294
    invoke-static {}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->values()[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mProfile:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoEncodeProfile(Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setMProfile(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;)V

    .line 295
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mHp_bitrate_ratio:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setMHp_bitrate_ratio(F)V

    .line 296
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mFullHd_bitrate_ratio:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setMFullHd_bitrate_ratio(F)V

    .line 297
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mSd_bitrate_ratio:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setMSd_bitrate_ratio(F)V

    .line 298
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mH_fps_bitrate_ratio:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setMH_fps_bitrate_ratio(F)V

    .line 299
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->transition_bitrate_ratio:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setTransition_bitrate_ratio(F)V

    .line 300
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->m2K_bitrate_ratio:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setM2K_bitrate_ratio(F)V

    .line 301
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->m4K_bitrate_ratio:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setM4K_bitrate_ratio(F)V

    .line 302
    iget v1, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mGop:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setMGop(I)V

    .line 303
    iget p0, p0, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mCodecType:I

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoHWEncodeSettings;->setMCodecType(I)V

    return-object v0
.end method

.method public static final toNLEVideoSWEncodeSettings(Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;-><init>()V

    .line 309
    iget v1, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->setMCrf(I)V

    .line 310
    iget-wide v1, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mQPOffset:D

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->setMQPOffset(D)V

    .line 311
    iget v1, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBps:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->setMBps(I)V

    .line 313
    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBitrateMode:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEEncodeBitrateMode(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->setMBitrateMode(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;)V

    .line 314
    invoke-static {}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->values()[Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEEncodePreset(Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->setMPreset(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;)V

    .line 315
    invoke-static {}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->values()[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object v1

    iget p0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mProfile:I

    aget-object p0, v1, p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoEncodeProfile(Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;)Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoSWEncodeSettings;->setMProfile(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;)V

    return-object v0
.end method

.method public static final toNLEWaterMarkPosition(Lcom/ss/android/vesdk/VEWaterMarkPosition;)Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$14:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_25

    const/4 v0, 0x4

    if-eq p0, v0, :cond_22

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1f

    .line 197
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->TL_BR:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    return-object p0

    .line 196
    :cond_1f
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->TR:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    return-object p0

    .line 195
    :cond_22
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->TL_BR:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    return-object p0

    .line 194
    :cond_25
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->TL:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    return-object p0

    .line 193
    :cond_28
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->BR:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    return-object p0

    .line 192
    :cond_2b
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->BL:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    return-object p0
.end method

.method public static final toNLEWatermarkEntity(Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;)Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->images:[Ljava/lang/String;

    if-eqz v1, :cond_18

    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/VecString;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->images:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setImages(Lcom/bytedance/ies/nle/editor_jni/VecString;)V

    .line 219
    :cond_18
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->interval:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setInterval(I)V

    .line 220
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->xOffset:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setXOffset(I)V

    .line 221
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->yOffset:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setYOffset(I)V

    .line 222
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->width:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setWidth(I)V

    .line 223
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->height:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setHeight(I)V

    .line 224
    iget-wide v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->sequenceIn:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setSequenceIn(J)V

    .line 225
    iget-wide v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->sequenceOut:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setSequenceOut(J)V

    .line 226
    iget-object v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const-string v2, "position"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEWaterMarkPosition(Lcom/ss/android/vesdk/VEWaterMarkPosition;)Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setPosition(Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;)V

    .line 227
    iget p0, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->rotation:I

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->setRotation(I)V

    return-object v0
.end method

.method public static final toNLEWatermarkMask(Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->maskImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->setMaskImage(Ljava/lang/String;)V

    .line 264
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->width:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->setWidth(I)V

    .line 265
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->height:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->setHeight(I)V

    .line 266
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->xOffset:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->setXOffset(I)V

    .line 267
    iget p0, p0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->yOffset:I

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->setYOffset(I)V

    return-object v0
.end method

.method public static final toNLEWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;-><init>()V

    .line 273
    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setNeedExtFile(Z)V

    .line 274
    iget-object v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->extFile:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setExtFile(Ljava/lang/String;)V

    .line 275
    :cond_16
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEWatermarkParam;->getEntities()[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    move-result-object v1

    const-string v2, "entities"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    array-length v3, v1

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_3a

    aget-object v5, v1, v4

    .line 275
    const-string v6, "ve"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEWatermarkEntity(Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;)Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_3a
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;

    invoke-direct {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setEntities(Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;)V

    .line 276
    iget-object v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    if-eqz v1, :cond_50

    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/VecString;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setImages(Lcom/bytedance/ies/nle/editor_jni/VecString;)V

    .line 278
    :cond_50
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/VecString;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->secondHalfImages:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecString;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setSecondHalfImages(Lcom/bytedance/ies/nle/editor_jni/VecString;)V

    .line 279
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setInterval(I)V

    .line 280
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setXOffset(I)V

    .line 281
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setYOffset(I)V

    .line 282
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setWidth(I)V

    .line 283
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setHeight(I)V

    .line 284
    iget-wide v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setDuration(J)V

    .line 285
    iget-object v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const-string v2, "position"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEWaterMarkPosition(Lcom/ss/android/vesdk/VEWaterMarkPosition;)Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setPosition(Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;)V

    .line 286
    iget v1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setRotation(I)V

    .line 287
    iget-object p0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->mask:Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    const-string v1, "mask"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEWatermarkMask(Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->setMask(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;)V

    return-object v0
.end method

.method public static final toVEBitrateMode(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$9:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1c

    .line 110
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p0

    .line 109
    :cond_1c
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_VBR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p0

    .line 108
    :cond_1f
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_QP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p0

    .line 107
    :cond_22
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p0

    .line 106
    :cond_25
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p0
.end method

.method public static final toVEClipAlgorithmParam(Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;)Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;-><init>()V

    .line 438
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->getIndex()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->index:I

    .line 439
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->getBingoEffect()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->bingoEffect:I

    .line 440
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->getRange()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->range:I

    .line 441
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->getRotate()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->rotate:I

    .line 442
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->getTrimIn()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->trimIn:I

    .line 443
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEClipAlgorithmParam;->getTrimOut()J

    move-result-wide v1

    long-to-int p0, v1

    iput p0, v0, Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;->trimOut:I

    return-object v0
.end method

.method public static final toVEEncodeStandard(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    .line 51
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    return-object p0

    .line 50
    :cond_19
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_MPEG4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    return-object p0

    .line 49
    :cond_1c
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    return-object p0

    .line 48
    :cond_1f
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    return-object p0
.end method

.method public static final toVEGetFrameFlags(Lcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;)Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$17:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-ne p0, v0, :cond_16

    .line 528
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NOEFFECT:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    return-object p0

    :cond_16
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 527
    :cond_1c
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NORMAL:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    return-object p0
.end method

.method public static final toVEMVAudioBean(Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;)Lcom/ss/android/vesdk/VEMVAudioInfo;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    new-instance v0, Lcom/ss/android/vesdk/VEMVAudioInfo;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEMVAudioInfo;-><init>()V

    .line 511
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/vesdk/VEMVAudioInfo;->path:Ljava/lang/String;

    .line 512
    :cond_16
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;->getTrimIn()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->microsToMillis(J)I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEMVAudioInfo;->trimIn:I

    .line 513
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;->getTrimOut()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->microsToMillis(J)I

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VEMVAudioInfo;->trimOut:I

    return-object v0
.end method

.method public static final toVEMVInfoBean(Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;)Lcom/ss/android/ttve/model/MVInfoBean;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    new-instance v0, Lcom/ss/android/ttve/model/MVInfoBean;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/MVInfoBean;-><init>()V

    .line 492
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttve/model/MVInfoBean;->width:I

    .line 493
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttve/model/MVInfoBean;->height:I

    .line 494
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;->getResources()Lcom/bytedance/ies/nle/editor_jni/VecNLEMVResourceBean;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 603
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 604
    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;

    .line 494
    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEMVResourceBean(Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)Lcom/ss/android/ttve/model/MVResourceBean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ss/android/ttve/model/MVInfoBean;->resources:Ljava/util/ArrayList;

    .line 495
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;->getFps()I

    move-result p0

    iput p0, v0, Lcom/ss/android/ttve/model/MVInfoBean;->fps:I

    return-object v0
.end method

.method public static final toVEMVResourceBean(Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;)Lcom/ss/android/ttve/model/MVResourceBean;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    new-instance v0, Lcom/ss/android/ttve/model/MVResourceBean;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/MVResourceBean;-><init>()V

    .line 460
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getTrimIn()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->microsToMillis(J)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->trimIn:D

    .line 461
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getTrimOut()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->microsToMillis(J)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->trimOut:D

    .line 462
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getSeqIn()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->microsToMillis(J)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->seqIn:D

    .line 463
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getSeqOut()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->microsToMillis(J)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->seqOut:D

    .line 464
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->content:Ljava/lang/String;

    .line 465
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->type:Ljava/lang/String;

    .line 466
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getRid()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->rid:I

    .line 467
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getTrackIndex()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    .line 468
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getClipIndex()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->clipIndex:I

    .line 469
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getIsLoop()I

    move-result v1

    iput v1, v0, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    .line 470
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVResourceBean;->getIsMute()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/android/ttve/model/MVResourceBean;->isMute:Z

    return-object v0
.end method

.method public static final toVERotate(F)Lcom/ss/android/vesdk/ROTATE_DEGREE;
    .registers 2

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p0, v0

    if-nez v0, :cond_9

    .line 537
    sget-object p0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-object p0

    :cond_9
    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p0, v0

    if-nez v0, :cond_12

    .line 538
    sget-object p0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-object p0

    :cond_12
    const/high16 v0, 0x43870000    # 270.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_1b

    .line 539
    sget-object p0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-object p0

    .line 540
    :cond_1b
    sget-object p0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-object p0
.end method

.method public static final toVESeekFlag(Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;)Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;
    .registers 2

    if-nez p0, :cond_5

    .line 37
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-object p0

    .line 39
    :cond_5
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    .line 42
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-object p0

    .line 41
    :cond_16
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-object p0

    .line 40
    :cond_19
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-object p0
.end method

.method public static final toVEState(Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;)Lcom/ss/android/vesdk/VEEditor$VEState;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_26

    .line 31
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->ANY:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 30
    :pswitch_13
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 29
    :pswitch_16
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 28
    :pswitch_19
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 27
    :pswitch_1c
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 26
    :pswitch_1f
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 25
    :pswitch_22
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static final toVETrackType(Lcom/bytedance/ies/nle/editor_jni/NLETrackType;)Ljava/lang/Integer;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$20:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_15

    const/4 p0, 0x0

    return-object p0

    .line 582
    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    .line 581
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final toVEVideoEncodePreset(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;)Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$12:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_32

    .line 159
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 158
    :pswitch_13
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 157
    :pswitch_16
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 156
    :pswitch_19
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 155
    :pswitch_1c
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 154
    :pswitch_1f
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 153
    :pswitch_22
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 152
    :pswitch_25
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_PLACEBO:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 151
    :pswitch_28
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 150
    :pswitch_2b
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    .line 149
    :pswitch_2e
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static final toVEVideoEncodeSettings(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Landroid/transition/Scene;)Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    .registers 7

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    new-instance p1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 384
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getCompileType()Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_1c

    :cond_14
    sget-object v3, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$16:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_1c
    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v1, v3, :cond_2d

    if-eq v1, v0, :cond_2a

    if-eq v1, v4, :cond_27

    .line 388
    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    goto :goto_2f

    .line 387
    :cond_27
    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_HIGH_GIF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    goto :goto_2f

    .line 386
    :cond_2a
    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_GIF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    goto :goto_2f

    .line 385
    :cond_2d
    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    .line 383
    :goto_2f
    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setCompileType(Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 391
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getRotate()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setRotate(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    const/4 v1, 0x4

    .line 392
    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 393
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getResizeX()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeX(F)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 394
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getResizeY()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeY(F)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 395
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getSpeed()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSpeed(F)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 396
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getOutputSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getOutputSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 397
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getWatermarkSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getWatermarkSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setWatermarkVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 399
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getBitrateMode()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    move-result-object v1

    if-nez v1, :cond_87

    goto :goto_8f

    :cond_87
    sget-object v2, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$9:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v2, v2, v1

    :goto_8f
    if-eq v2, v0, :cond_a3

    if-eq v2, v4, :cond_9b

    .line 402
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getBps()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setBps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    goto :goto_aa

    .line 400
    :cond_9b
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getSwQP()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setQP(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    goto :goto_aa

    .line 401
    :cond_a3
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getSwCRF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    .line 405
    :goto_aa
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getBitrateMode()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    move-result-object v0

    const-string v1, "bitrateMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEBitrateMode(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoBitrateMode(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 406
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getFps()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 407
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getGopSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 408
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getSwPreset()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    move-result-object v0

    const-string v1, "swPreset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEVideoEncodeSettingsPreset(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 409
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getEncodeStandard()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    move-result-object v0

    const-string v1, "encodeStandard"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEEncodeStandard(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeStandard(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 410
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getEncodeProfile()Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    move-result-object v0

    const-string v1, "encodeProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoEncodeProfile(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 411
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getSwMaxrate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSwMaxrate(J)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 412
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getIsSupportHWEncoder()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 413
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getEnableHwBufferEncode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setHwBufferEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getEnableByteVCRemuxVideo()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideoForByteVC(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 415
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getEnableRemuxVideo()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideo(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 416
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getEnableRemuxVideoForRotation()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideoForRotation(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 417
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getEnableRemuxVideoForShoot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideoForShoot(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 418
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getHasBFrame()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setHasBFrame(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 419
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMWatermarkParam()Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;

    move-result-object v0

    const-string v1, "mWatermarkParam"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEWatermarkParam(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)Lcom/ss/android/vesdk/VEWatermarkParam;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 420
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMOptRemuxWithCopy()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->opRemuxWithCopying(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 421
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setMetaDescription(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 422
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setMetaComment(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 423
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMCompileSoftInfo()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setCompileSoftInfo(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 424
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMRecordingMp4()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->enableRecordingMp4(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 425
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMReEncodeOpt()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->enableReEncodeOpt(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 426
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMResolutionAlign()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResolutionAlignment(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 427
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getMKeyFramePoints()Lcom/bytedance/ies/nle/editor_jni/VecInt;

    move-result-object v0

    const-string v1, "mKeyFramePoints"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setKeyFramePoints([I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 428
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getExternalSettingsJsonStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setExternalSettings(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    .line 432
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;->getEnableInterLeave()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->setEnableInterLeave(Z)V

    .line 427
    const-string p0, "Builder(VEVideoEncodeSet\u2026nableInterLeave\n        }"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic toVEVideoEncodeSettings$default(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Landroid/transition/Scene;ILjava/lang/Object;)Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 381
    :cond_5
    invoke-static {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEVideoEncodeSettings(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Landroid/transition/Scene;)Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p0

    return-object p0
.end method

.method public static final toVEVideoEncodeSettingsPreset(Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$12:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_32

    .line 175
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 174
    :pswitch_13
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 173
    :pswitch_16
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 172
    :pswitch_19
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 171
    :pswitch_1c
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 170
    :pswitch_1f
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 169
    :pswitch_22
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 168
    :pswitch_25
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_PLACEBO:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 167
    :pswitch_28
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 166
    :pswitch_2b
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    .line 165
    :pswitch_2e
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static final toVEVideoRatio(F)Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;
    .registers 2

    const v0, 0x3faaaaab

    cmpg-float v0, p0, v0

    if-nez v0, :cond_a

    .line 570
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_4_3:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0

    :cond_a
    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float v0, p0, v0

    if-nez v0, :cond_13

    .line 571
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_3_4:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0

    :cond_13
    const v0, 0x3fe38e39

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1d

    .line 572
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_16_9:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0

    :cond_1d
    const/high16 v0, 0x3f100000    # 0.5625f

    cmpg-float v0, p0, v0

    if-nez v0, :cond_26

    .line 573
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_9_16:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0

    :cond_26
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_2f

    .line 574
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_1_1:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0

    .line 575
    :cond_2f
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0
.end method

.method public static final toVEWaterMarkPosition(Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;)Lcom/ss/android/vesdk/VEWaterMarkPosition;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$13:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_25

    const/4 v0, 0x4

    if-eq p0, v0, :cond_22

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1f

    .line 186
    sget-object p0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object p0

    .line 185
    :cond_1f
    sget-object p0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object p0

    .line 184
    :cond_22
    sget-object p0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object p0

    .line 183
    :cond_25
    sget-object p0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object p0

    .line 182
    :cond_28
    sget-object p0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object p0

    .line 181
    :cond_2b
    sget-object p0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object p0
.end method

.method public static final toVEWatermarkEntity(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;-><init>()V

    .line 203
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getImages()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v1

    const-string v2, "images"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 38
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_60

    check-cast v1, [Ljava/lang/String;

    .line 203
    iput-object v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->images:[Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getInterval()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->interval:I

    .line 205
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getXOffset()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->xOffset:I

    .line 206
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getYOffset()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->yOffset:I

    .line 207
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->width:I

    .line 208
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->height:I

    .line 209
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getSequenceIn()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->sequenceIn:J

    .line 210
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getSequenceOut()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->sequenceOut:J

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getPosition()Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    move-result-object v1

    const-string v2, "position"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEWaterMarkPosition(Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;)Lcom/ss/android/vesdk/VEWaterMarkPosition;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 212
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;->getRotation()I

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->rotation:I

    return-object v0

    .line 38
    :cond_60
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toVEWatermarkMask(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;)Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->getMaskImage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->maskImage:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->width:I

    .line 235
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->height:I

    .line 236
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->getXOffset()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->xOffset:I

    .line 237
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;->getYOffset()I

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;->yOffset:I

    return-object v0
.end method

.method public static final toVEWatermarkParam(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;)Lcom/ss/android/vesdk/VEWatermarkParam;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/ss/android/vesdk/VEWatermarkParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEWatermarkParam;-><init>()V

    .line 243
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getNeedExtFile()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    .line 244
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getExtFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->extFile:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getEntities()Lcom/bytedance/ies/nle/editor_jni/VecNLEWatermarkEntity;

    move-result-object v1

    const-string v2, "entities"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 590
    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;

    .line 245
    const-string v4, "nle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEWatermarkEntity(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkEntity;)Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_47
    const/4 v1, 0x0

    .line 38
    new-array v3, v1, [Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz v2, :cond_d6

    check-cast v2, [Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    .line 245
    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEWatermarkParam;->setEntities([Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;)V

    .line 246
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getImages()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v2

    const-string v4, "images"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d0

    check-cast v2, [Ljava/lang/String;

    .line 246
    iput-object v2, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getSecondHalfImages()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v2

    const-string v4, "secondHalfImages"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ca

    check-cast v1, [Ljava/lang/String;

    .line 248
    iput-object v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->secondHalfImages:[Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getInterval()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    .line 250
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getXOffset()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    .line 251
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getYOffset()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    .line 252
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    .line 253
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    .line 254
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->duration:J

    .line 255
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getPosition()Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    move-result-object v1

    const-string v2, "position"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEWaterMarkPosition(Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;)Lcom/ss/android/vesdk/VEWaterMarkPosition;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 256
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    .line 257
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkParam;->getMask()Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;

    move-result-object p0

    const-string v1, "mask"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toVEWatermarkMask(Lcom/bytedance/ies/nle/editor_jni/NLEWatermarkMask;)Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->mask:Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    return-object v0

    .line 38
    :cond_ca
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_d0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_d6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
