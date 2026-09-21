.class public final Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final value:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->value:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;FILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->value:F

    :cond_6
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->copy(F)Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->value:F

    return p0
.end method

.method public final copy(F)Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 2

    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->value:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->value:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    return v2

    :cond_1f
    return v0
.end method

.method public final getValue()F
    .registers 1

    .line 11
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->value:F

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->value:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatValue(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->value:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
