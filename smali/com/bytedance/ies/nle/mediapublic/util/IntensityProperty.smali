.class public final Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEMatrix;)V
    .registers 6

    const-string p3, "segment"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "slot"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance p2, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getIntensity()F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p2, v0, v1}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    .line 87
    invoke-direct {p0, p2}, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V
    .registers 3

    const-string v0, "intensity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 86
    # getter for: Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->copy(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;
    .registers 2

    const-string p0, "intensity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;-><init>(Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    iget-object p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getIntensity()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntensityProperty(intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->intensity:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
