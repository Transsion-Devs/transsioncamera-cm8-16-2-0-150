.class public final Lcom/bytedance/ies/nle/mediapublic/util/LongValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->value:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/LongValue;JILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/LongValue;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    iget-wide p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->value:J

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->copy(J)Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->value:J

    return-wide v0
.end method

.method public final copy(J)Lcom/bytedance/ies/nle/mediapublic/util/LongValue;
    .registers 3

    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;-><init>(J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    iget-wide v3, p0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->value:J

    iget-wide p0, p1, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->value:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getValue()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongValue(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
