.class public final Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

.field private final position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

.field private final rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

.field private final scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 0
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;Z)V
    .registers 11

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getAlpha()F

    move-result p1

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    .line 45
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    const/4 v1, 0x0

    if-nez p3, :cond_1b

    move-object v2, v1

    goto :goto_23

    .line 47
    :cond_1b
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;->getTransformX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_23
    if-nez v2, :cond_2a

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_2e
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p4, :cond_34

    move v5, v4

    goto :goto_35

    :cond_34
    move v5, v3

    :goto_35
    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    if-nez p3, :cond_3e

    goto :goto_46

    .line 48
    :cond_3e
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;->getTransformY()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_46
    if-nez v1, :cond_4d

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result p3

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p3

    :goto_51
    if-eqz p4, :cond_54

    move v3, v4

    :cond_54
    int-to-float p4, v3

    mul-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {v2, p3}, [Ljava/lang/Float;

    move-result-object p3

    .line 46
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 45
    invoke-direct {p1, p3}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 51
    new-instance p3, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result p4

    float-to-double v1, p4

    neg-double v1, v1

    invoke-direct {p3, v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    .line 52
    new-instance p4, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result p2

    float-to-double v1, p2

    invoke-direct {p4, v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    .line 43
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x1

    .line 38
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V
    .registers 6

    const-string v0, "alpha"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    .line 32
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 35
    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    .line 36
    iput-object p4, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    const/4 p6, 0x0

    .line 33
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_d

    .line 31
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p1

    :cond_d
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1e

    .line 32
    new-instance p2, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 33
    filled-new-array {p6, p6}, [Ljava/lang/Float;

    move-result-object p6

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    .line 32
    invoke-direct {p2, p6}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_1e
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_26

    .line 35
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p3

    :cond_26
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2e

    .line 36
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p4

    .line 30
    :cond_2e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->copy(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component3()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final component4()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;
    .registers 5

    const-string p0, "alpha"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "position"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rotation"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scale"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    iget-object p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getAlpha()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final getRotation()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final getScale()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoProperty(alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->alpha:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
