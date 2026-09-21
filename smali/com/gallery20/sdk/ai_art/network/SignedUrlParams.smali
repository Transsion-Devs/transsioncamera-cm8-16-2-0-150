.class public final Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentType"
    .end annotation
.end field

.field private final method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method"
    .end annotation
.end field

.field private final objectName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "objectName"
    .end annotation
.end field

.field private final objectNamePrefix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "objectNamePrefix"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->method:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->contentType:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectName:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectNamePrefix:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    .line 53
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->method:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->contentType:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectName:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectNamePrefix:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectNamePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;
    .registers 5

    const-string p0, "method"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->method:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->contentType:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->contentType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectName:Ljava/lang/String;

    iget-object v3, p1, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectNamePrefix:Ljava/lang/String;

    iget-object p1, p1, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectNamePrefix:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getMethod()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final getObjectName()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectName:Ljava/lang/String;

    return-object p0
.end method

.method public final getObjectNamePrefix()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectNamePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->contentType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectName:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectNamePrefix:Ljava/lang/String;

    if-nez p0, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignedUrlParams(method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectNamePrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;->objectNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
