.class public final Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

.field private final intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

.field private final shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;


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

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V
    .registers 6

    const-string p3, "segment"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "slot"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance p2, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getColor()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;-><init>(J)V

    .line 80
    new-instance p3, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getIntensity()F

    move-result v0

    invoke-direct {p3, v0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    .line 81
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getShadow()F

    move-result p1

    invoke-direct {v0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    .line 78
    invoke-direct {p0, p2, p3, v0}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)V
    .registers 5

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intensity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadow"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_8

    .line 77
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_LONG:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_LONG$p()Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    move-result-object p1

    :cond_8
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_10

    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p2

    :cond_10
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_18

    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p3

    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->copy(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/nle/mediapublic/util/LongValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final component3()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;
    .registers 4

    const-string p0, "color"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intensity"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shadow"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget-object p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getColor()Lcom/bytedance/ies/nle/mediapublic/util/LongValue;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    return-object p0
.end method

.method public final getIntensity()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public final getShadow()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChromaChannelProperty(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->color:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->shadow:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
