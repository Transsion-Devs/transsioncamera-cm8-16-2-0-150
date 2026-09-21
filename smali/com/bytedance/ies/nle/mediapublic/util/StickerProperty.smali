.class public final Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

.field private final rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

.field private final scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V
    .registers 7

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "slot"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    const/4 v0, 0x0

    if-nez p3, :cond_11

    move-object v1, v0

    goto :goto_19

    .line 105
    :cond_11
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;->getTransformX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_19
    if-nez v1, :cond_20

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v1

    goto :goto_24

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    if-nez p3, :cond_2b

    goto :goto_33

    .line 106
    :cond_2b
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;->getTransformY()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_33
    if-nez v0, :cond_3a

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result p3

    goto :goto_3e

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    :goto_3e
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {v1, p3}, [Ljava/lang/Float;

    move-result-object p3

    .line 104
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 103
    invoke-direct {p1, p3}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 109
    new-instance p3, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 111
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 112
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Float;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-direct {p3, v0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 115
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result p2

    float-to-double v1, p2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    .line 102
    invoke-direct {p0, p1, p3, v0}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V
    .registers 5

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 97
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 100
    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    const/high16 p5, 0x3f800000    # 1.0f

    .line 98
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const/4 v0, 0x0

    .line 95
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1c

    .line 94
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 95
    filled-new-array {v0, v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_1c
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2d

    .line 97
    new-instance p2, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    .line 98
    filled-new-array {p5, p5}, [Ljava/lang/Float;

    move-result-object p5

    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    .line 97
    invoke-direct {p2, p5}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_2d
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_35

    .line 100
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p3

    .line 93
    :cond_35
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->copy(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final component3()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;
    .registers 4

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scale"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rotation"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    iget-object p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public final getRotation()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final getScale()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StickerProperty(position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->position:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->scale:Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->rotation:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
