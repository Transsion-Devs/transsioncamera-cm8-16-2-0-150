.class public final Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;
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
.field private effectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private has_more:I

.field private inspiration_awemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private status_code:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 0
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;-><init>(Ljava/util/List;Ljava/lang/String;IILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;IILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    iput p3, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    iput p4, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;IILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p7, p6, 0x4

    const/4 v1, 0x0

    if-eqz p7, :cond_11

    move p3, v1

    :cond_11
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_16

    move p4, v1

    :cond_16
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1b

    move-object p5, v0

    .line 20
    :cond_1b
    invoke-direct/range {p0 .. p5}, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;-><init>(Ljava/util/List;Ljava/lang/String;IILjava/util/ArrayList;)V

    return-void
.end method

.method private final component5()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;Ljava/util/List;Ljava/lang/String;IILjava/util/ArrayList;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget p3, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget p4, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    :cond_1e
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->copy(Ljava/util/List;Ljava/lang/String;IILjava/util/ArrayList;)Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    return p0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;IILjava/util/ArrayList;)Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)",
            "Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;"
        }
    .end annotation

    new-instance p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;

    invoke-direct/range {p0 .. p5}, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;-><init>(Ljava/util/List;Ljava/lang/String;IILjava/util/ArrayList;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_35

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;

    if-eqz v0, :cond_33

    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    iget v1, p1, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    if-ne v0, v1, :cond_33

    iget v0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    iget v1, p1, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    if-ne v0, v1, :cond_33

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method

.method public final getHas_more()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    return p0
.end method

.method public final getInspiration_awemes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->getResponseData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getResponseData()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 25
    :cond_b
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    return-object p0

    .line 27
    :cond_e
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    .line 28
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    if-eqz v0, :cond_a5

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;

    .line 29
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->getMaterials()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    check-cast v2, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/ugc/effectplatform/model/MaterialModel;

    .line 30
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/MaterialModel;->getSticker_data()Lcom/ss/ugc/effectplatform/model/Effect;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 31
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->getAweme()Lcom/ss/ugc/effectplatform/model/InspirationModel;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5b

    invoke-virtual {v5}, Lcom/ss/ugc/effectplatform/model/InspirationModel;->getAuthor()Lcom/ss/ugc/effectplatform/model/AuthorModel;

    move-result-object v5

    if-eqz v5, :cond_5b

    invoke-virtual {v5}, Lcom/ss/ugc/effectplatform/model/AuthorModel;->getNickname()Ljava/lang/String;

    move-result-object v5

    goto :goto_5c

    :cond_5b
    move-object v5, v6

    :goto_5c
    invoke-virtual {v4, v5}, Lcom/ss/ugc/effectplatform/model/Effect;->setNickname(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->getAweme()Lcom/ss/ugc/effectplatform/model/InspirationModel;

    move-result-object v5

    if-eqz v5, :cond_70

    invoke-virtual {v5}, Lcom/ss/ugc/effectplatform/model/InspirationModel;->getAuthor()Lcom/ss/ugc/effectplatform/model/AuthorModel;

    move-result-object v5

    if-eqz v5, :cond_70

    invoke-virtual {v5}, Lcom/ss/ugc/effectplatform/model/AuthorModel;->getAvatar_thumb()Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;

    move-result-object v5

    goto :goto_71

    :cond_70
    move-object v5, v6

    :goto_71
    invoke-virtual {v4, v5}, Lcom/ss/ugc/effectplatform/model/Effect;->setAvatar_thumb(Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;)V

    .line 33
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/MaterialModel;->getUse_count()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_81

    :cond_7f
    const-wide/16 v7, 0x0

    :goto_81
    invoke-virtual {v4, v7, v8}, Lcom/ss/ugc/effectplatform/model/Effect;->setUse_number(J)V

    .line 34
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;->getAweme()Lcom/ss/ugc/effectplatform/model/InspirationModel;

    move-result-object v3

    if-eqz v3, :cond_9a

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/InspirationModel;->getVideo()Lcom/ss/ugc/effectplatform/model/VideoModel;

    move-result-object v3

    if-eqz v3, :cond_9a

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/VideoModel;->getPlay_addr()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v3

    if-eqz v3, :cond_9a

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/UrlModel;->getUrl_list()Ljava/util/List;

    move-result-object v6

    :cond_9a
    invoke-virtual {v4, v6}, Lcom/ss/ugc/effectplatform/model/Effect;->setVideoPlayURLs(Ljava/util/List;)V

    .line 35
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    if-eqz v3, :cond_37

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 39
    :cond_a5
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    return p0
.end method

.method public final getStatus_code()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2c
    add-int/2addr v0, v1

    return v0
.end method

.method public final setHas_more(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    return-void
.end method

.method public final setInspiration_awemes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/InspirationFeedEffectModel;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public final setStatus_code(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InspirationFeedEffectsResponse(inspiration_awemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->inspiration_awemes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->status_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", has_more="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->has_more:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", effectList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/InspirationFeedEffectsResponse;->effectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
