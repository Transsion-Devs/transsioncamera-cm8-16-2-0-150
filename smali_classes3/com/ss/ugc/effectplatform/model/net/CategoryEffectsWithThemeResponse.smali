.class public final Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;
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
.field private data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;-><init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;Ljava/lang/String;I)V
    .registers 4

    .line 19
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->message:Ljava/lang/String;

    iput p3, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    const/4 p3, 0x0

    .line 19
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;-><init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;Ljava/lang/String;I)V

    return-void
.end method

.method private final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;Ljava/lang/String;IILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->message:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->copy(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;Ljava/lang/String;I)Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkValue()Z
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final component1()Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    return p0
.end method

.method public final copy(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;Ljava/lang/String;I)Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;
    .registers 4

    new-instance p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;-><init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;Ljava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_25

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;

    if-eqz v0, :cond_23

    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    iget p1, p1, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    if-ne p0, p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method public final getData()Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    return-object p0
.end method

.method public getResponseData()Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->getResponseData()Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    return p0
.end method

.method public final getStatus_code()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->message:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final setData(Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    return-void
.end method

.method public final setStatus_code(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryEffectsWithThemeResponse(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->status_code:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verifySign()Z
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;->category_effects_theme:Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->collection:Ljava/util/List;

    if-eqz v0, :cond_26

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 39
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 43
    :cond_26
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;->category_effects_theme:Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->bind_effects:Ljava/util/List;

    if-eqz v0, :cond_4b

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 44
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_38

    return v1

    .line 48
    :cond_4b
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeResponse;->data:Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;

    if-eqz p0, :cond_5e

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;->category_effects_theme:Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;

    if-eqz p0, :cond_5e

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->effects:Lcom/ss/ugc/effectplatform/model/Effect;

    if-eqz p0, :cond_5e

    .line 49
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result p0

    if-nez p0, :cond_5e

    return v1

    :cond_5e
    const/4 p0, 0x1

    return p0
.end method
