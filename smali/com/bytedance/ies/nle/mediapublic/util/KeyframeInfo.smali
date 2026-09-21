.class public final Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final filterType:Ljava/lang/String;

.field private final slotId:I

.field private final trackId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    const-string v0, "filterType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->slotId:I

    iput p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->trackId:I

    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->filterType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;IILjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->slotId:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->trackId:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->filterType:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->copy(IILjava/lang/String;)Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->slotId:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->trackId:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->filterType:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IILjava/lang/String;)Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;
    .registers 4

    const-string p0, "filterType"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;-><init>(IILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;

    iget v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->slotId:I

    iget v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->slotId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->trackId:I

    iget v3, p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->trackId:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->filterType:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->filterType:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getFilterType()Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->filterType:Ljava/lang/String;

    return-object p0
.end method

.method public final getSlotId()I
    .registers 1

    .line 231
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->slotId:I

    return p0
.end method

.method public final getTrackId()I
    .registers 1

    .line 231
    iget p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->trackId:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->slotId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->trackId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->filterType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyframeInfo(slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filterType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframeInfo;->filterType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
