.class public final Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;
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
.field private message:Ljava/lang/String;

.field private status_code:I

.field private updated:Z


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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .registers 4

    .line 17
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    iput p3, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move p3, v0

    .line 16
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;-><init>(ZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;ZLjava/lang/String;IILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->copy(ZLjava/lang/String;I)Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 1

    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    return p0
.end method

.method public final copy(ZLjava/lang/String;I)Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;
    .registers 4

    new-instance p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;-><init>(ZLjava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_21

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;

    iget-boolean v0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    iget-boolean v1, p1, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    iget p1, p1, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    if-ne p0, p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseData()Ljava/lang/Boolean;
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->getResponseData()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 27
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    return p0
.end method

.method public final getStatus_code()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    return p0
.end method

.method public final getUpdated()Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public final setStatus_code(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    return-void
.end method

.method public final setUpdated(Z)V
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectCheckUpdateResponse(updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->updated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectCheckUpdateResponse;->status_code:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
