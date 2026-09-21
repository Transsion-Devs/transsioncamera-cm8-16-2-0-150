.class public final Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;
.super Lcom/ss/ugc/effectplatform/model/NetResponseChecker;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/ugc/effectplatform/model/NetResponseChecker;"
    }
.end annotation


# instance fields
.field private data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

.field private message:Ljava/lang/String;

.field private status_code:I


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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;-><init>(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;ILjava/lang/String;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    iput p2, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move-object p3, v0

    .line 12
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;-><init>(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;ILjava/lang/String;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->copy(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;ILjava/lang/String;)Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkValue()Z
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final component1()Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;ILjava/lang/String;)Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;
    .registers 4

    new-instance p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;-><init>(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_25

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;

    if-eqz v0, :cond_23

    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    iget v1, p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    if-ne v0, v1, :cond_23

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method public final getData()Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseData()Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->getResponseData()Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    return p0
.end method

.method public final getStatus_code()I
    .registers 1

    .line 11
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1a
    add-int/2addr v0, v1

    return v0
.end method

.method public final setData(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public final setStatus_code(I)V
    .registers 2

    .line 11
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendSearchWordsResponse(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->data:Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->status_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
