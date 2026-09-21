.class public final Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

.field private final percent:F

.field private final rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;


# direct methods
.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;F)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 82
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 83
    iput p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->percent:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;FILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->percent:F

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->copy(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;F)Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    return-object p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->percent:F

    return p0
.end method

.method public final copy(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;F)Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;
    .registers 4

    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;F)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->percent:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->percent:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    return v2

    :cond_35
    return v0
.end method

.method public final getLeftKeyframe()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    return-object p0
.end method

.method public final getPercent()F
    .registers 1

    .line 83
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->percent:F

    return p0
.end method

.method public final getRightKeyframe()Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->percent:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyframeCalResult(leftKeyframe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->leftKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightKeyframe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->rightKeyframe:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeCalResult;->percent:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
