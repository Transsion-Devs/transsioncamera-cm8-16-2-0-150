.class public final Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/EffectNameModel;",
            ">;"
        }
    .end annotation
.end field

.field private search_tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/EffectNameModel;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 36
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->copy(Ljava/lang/String;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/EffectNameModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/EffectNameModel;",
            ">;)",
            "Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;"
        }
    .end annotation

    new-instance p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

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

.method public final getEffects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/EffectNameModel;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public final getSearch_tips()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public final setEffects(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/EffectNameModel;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

    return-void
.end method

.method public final setSearch_tips(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendSearchWordsModel(search_tips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->search_tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", effects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/RecommendSearchWordsModel;->effects:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
