.class public final Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalculate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getVolume(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)F
    .registers 2

    .line 66
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getVolume()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_10
    if-nez p0, :cond_20

    .line 67
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object p0

    if-nez p0, :cond_1b

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1b
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getVolume()F

    move-result p0

    return p0

    .line 66
    :cond_20
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final calculateKeyframeDate(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;
    .registers 18

    const-string p0, "slot"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getKeyframes()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p0

    .line 23
    const-string v1, "keyframes"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    move v7, v6

    move-wide v5, v4

    move-wide v3, v2

    move-object v2, v1

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_30

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_30
    check-cast v8, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v12

    add-long/2addr v10, v12

    cmp-long v7, v3, v10

    if-gtz v7, :cond_46

    cmp-long v7, v10, p2

    if-gtz v7, :cond_46

    move-object v1, v8

    move-wide v3, v10

    goto :goto_50

    :cond_46
    cmp-long v7, p2, v10

    if-gtz v7, :cond_50

    cmp-long v7, v10, v5

    if-gtz v7, :cond_50

    move-object v2, v8

    move-wide v5, v10

    :cond_50
    :goto_50
    move v7, v9

    goto :goto_1f

    :cond_52
    if-eqz v1, :cond_5d

    if-eqz v2, :cond_5d

    sub-long v7, p2, v3

    long-to-float p0, v7

    sub-long/2addr v5, v3

    long-to-float v0, v5

    div-float/2addr p0, v0

    goto :goto_5f

    :cond_5d
    const/high16 p0, 0x3f800000    # 1.0f

    .line 36
    :goto_5f
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;F)V

    return-object v0
.end method

.method public final getKeyframeVolume(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)Ljava/lang/Float;
    .registers 11

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 0
    const-string v2, "slot"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getKeyframes()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v2, v3, :cond_17

    return-object v4

    .line 43
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalculate;->calculateKeyframeDate(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->getLeftKeyframe()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object p2

    if-nez p2, :cond_23

    :goto_21
    move-object p2, v4

    goto :goto_32

    :cond_23
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p2

    if-nez p2, :cond_2a

    goto :goto_21

    :cond_2a
    invoke-direct {p0, p2}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalculate;->getVolume(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 45
    :goto_32
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->getRightKeyframe()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object p3

    if-nez p3, :cond_3a

    :goto_38
    move-object p0, v4

    goto :goto_49

    :cond_3a
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p3

    if-nez p3, :cond_41

    goto :goto_38

    :cond_41
    invoke-direct {p0, p3}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalculate;->getVolume(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 47
    :goto_49
    const-class p3, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    const-string v2, "dynamicCast"

    const-class v3, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    if-eqz p2, :cond_78

    .line 48
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->getLeftKeyframe()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v5

    if-nez v5, :cond_58

    goto :goto_78

    .line 24
    :cond_58
    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    if-nez v5, :cond_71

    goto :goto_78

    .line 48
    :cond_71
    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getEnableAudio()Z

    move-result v5

    if-nez v5, :cond_78

    move-object p2, v1

    :cond_78
    :goto_78
    if-eqz p0, :cond_a1

    .line 54
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->getRightKeyframe()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v5

    if-nez v5, :cond_81

    goto :goto_a1

    .line 24
    :cond_81
    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {v3, v2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    if-nez p3, :cond_9a

    goto :goto_a1

    .line 54
    :cond_9a
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getEnableAudio()Z

    move-result p3

    if-nez p3, :cond_a1

    goto :goto_a2

    :cond_a1
    :goto_a1
    move-object v1, p0

    :goto_a2
    if-eqz p2, :cond_be

    if-eqz v1, :cond_be

    .line 59
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sub-float/2addr p0, p3

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->getPercent()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_be
    if-nez p2, :cond_c2

    move p0, v0

    goto :goto_c6

    .line 61
    :cond_c2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_c6
    if-nez v1, :cond_c9

    goto :goto_cd

    :cond_c9
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_cd
    add-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyframeVolumeOnDelete(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)F
    .registers 7

    const-string v0, "slot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getKeyframes()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_30

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getKeyframes()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    const-string p2, "slot.keyframes"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-nez p1, :cond_24

    return v2

    :cond_24
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p1

    if-nez p1, :cond_2b

    return v2

    :cond_2b
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalculate;->getVolume(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)F

    move-result p0

    return p0

    .line 74
    :cond_30
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalculate;->getKeyframeVolume(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_37

    return v2

    :cond_37
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method
