.class public final Lcom/ss/ugc/effectplatform/model/MaterialModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

.field private use_count:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/MaterialModel;-><init>(Ljava/lang/Long;Lcom/ss/ugc/effectplatform/model/Effect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lcom/ss/ugc/effectplatform/model/Effect;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Lcom/ss/ugc/effectplatform/model/Effect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 41
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/MaterialModel;-><init>(Ljava/lang/Long;Lcom/ss/ugc/effectplatform/model/Effect;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/MaterialModel;Ljava/lang/Long;Lcom/ss/ugc/effectplatform/model/Effect;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/MaterialModel;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/MaterialModel;->copy(Ljava/lang/Long;Lcom/ss/ugc/effectplatform/model/Effect;)Lcom/ss/ugc/effectplatform/model/MaterialModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    return-object p0
.end method

.method public final component2()Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    return-object p0
.end method

.method public final copy(Ljava/lang/Long;Lcom/ss/ugc/effectplatform/model/Effect;)Lcom/ss/ugc/effectplatform/model/MaterialModel;
    .registers 3

    new-instance p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;

    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/MaterialModel;-><init>(Ljava/lang/Long;Lcom/ss/ugc/effectplatform/model/Effect;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/MaterialModel;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/ss/ugc/effectplatform/model/MaterialModel;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final getSticker_data()Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    return-object p0
.end method

.method public final getUse_count()Ljava/lang/Long;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSticker_data(Lcom/ss/ugc/effectplatform/model/Effect;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    return-void
.end method

.method public final setUse_count(Ljava/lang/Long;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaterialModel(use_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->use_count:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sticker_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/MaterialModel;->sticker_data:Lcom/ss/ugc/effectplatform/model/Effect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
