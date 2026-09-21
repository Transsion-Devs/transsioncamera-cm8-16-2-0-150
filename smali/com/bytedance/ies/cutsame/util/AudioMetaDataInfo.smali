.class public final Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final duration:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->duration:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0xfa0

    .line 66
    :cond_6
    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;-><init>(I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;IILjava/lang/Object;)Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->duration:I

    :cond_6
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->copy(I)Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->duration:I

    return p0
.end method

.method public final copy(I)Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;
    .registers 2

    new-instance p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->duration:I

    iget p1, p1, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->duration:I

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getDuration()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->duration:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->duration:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioMetaDataInfo(duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;->duration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
