.class public final Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

.field private materials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/MaterialModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;-><init>(Lcom/ss/ugc/effectplatform/model/InspirationModel;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/InspirationModel;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ugc/effectplatform/model/InspirationModel;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/MaterialModel;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/InspirationModel;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 9
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;-><init>(Lcom/ss/ugc/effectplatform/model/InspirationModel;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;Lcom/ss/ugc/effectplatform/model/InspirationModel;Ljava/util/List;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->copy(Lcom/ss/ugc/effectplatform/model/InspirationModel;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/ss/ugc/effectplatform/model/InspirationModel;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/MaterialModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Lcom/ss/ugc/effectplatform/model/InspirationModel;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ugc/effectplatform/model/InspirationModel;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/MaterialModel;",
            ">;)",
            "Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;"
        }
    .end annotation

    new-instance p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;

    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;-><init>(Lcom/ss/ugc/effectplatform/model/InspirationModel;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

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

.method public final getAweme()Lcom/ss/ugc/effectplatform/model/InspirationModel;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    return-object p0
.end method

.method public final getMaterials()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/MaterialModel;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAweme(Lcom/ss/ugc/effectplatform/model/InspirationModel;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    return-void
.end method

.method public final setMaterials(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/MaterialModel;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InspirationFeedEffectModel(aweme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->aweme:Lcom/ss/ugc/effectplatform/model/InspirationModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", materials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->materials:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
