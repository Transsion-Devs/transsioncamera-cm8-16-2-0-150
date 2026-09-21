.class public final Lcom/ss/ugc/effectplatform/model/PlatformEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private file_uri:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private hint_uri:Ljava/lang/String;

.field private icon_uri:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 0
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/ss/ugc/effectplatform/model/PlatformEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "file_uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon_uri"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint_uri"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p9, p8, 0x4

    .line 9
    const-string v1, ""

    if-eqz p9, :cond_12

    move-object p3, v1

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_17

    move-object p4, v1

    :cond_17
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1c

    move-object p5, v0

    :cond_1c
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_21

    move-object p6, v1

    :cond_21
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_26

    move-object p7, v0

    .line 14
    :cond_26
    invoke-direct/range {p0 .. p7}, Lcom/ss/ugc/effectplatform/model/PlatformEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final concatPrefixWithUri(Ljava/util/List;Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;"
        }
    .end annotation

    .line 30
    new-instance p0, Lcom/ss/ugc/effectplatform/model/UrlModel;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/ss/ugc/effectplatform/model/UrlModel;->setUri(Ljava/lang/String;)V

    if-eqz p1, :cond_39

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_36

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 38
    :cond_36
    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/model/UrlModel;->setUrl_list(Ljava/util/List;)V

    :cond_39
    return-object p0
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/PlatformEffect;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget-object p6, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    :cond_2a
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/PlatformEffect;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ugc/effectplatform/model/PlatformEffect;"
        }
    .end annotation

    const-string p0, "file_uri"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "icon_uri"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "hint_uri"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/ss/ugc/effectplatform/model/PlatformEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_51

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    if-eqz v0, :cond_4f

    check-cast p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    goto :goto_51

    :cond_4f
    const/4 p0, 0x0

    return p0

    :cond_51
    :goto_51
    const/4 p0, 0x1

    return p0
.end method

.method public final getFile_uri()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    return-object p0
.end method

.method public final getHint()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    return-object p0
.end method

.method public final getHint_uri()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    return-object p0
.end method

.method public final getIcon_uri()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequirements()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    return-object p0
.end method

.method public final getTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    if-eqz p0, :cond_56

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_56
    add-int/2addr v0, v1

    return v0
.end method

.method public final setFile_uri(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    return-void
.end method

.method public final setHint(Ljava/lang/String;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    return-void
.end method

.method public final setHint_uri(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    return-void
.end method

.method public final setIcon_uri(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    return-void
.end method

.method public final setRequirements(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    return-void
.end method

.method public final setTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    return-void
.end method

.method public final toEffect(Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 63
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ugc/effectplatform/model/Effect;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 17
    new-instance v2, Lcom/ss/ugc/effectplatform/model/Effect;

    const v59, 0x1fffff

    const/16 v60, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, -0x1

    invoke-direct/range {v2 .. v60}, Lcom/ss/ugc/effectplatform/model/Effect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/AuthorThumbModel;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iget-object v3, v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    const-string v4, ""

    if-eqz v3, :cond_74

    goto :goto_75

    :cond_74
    move-object v3, v4

    :goto_75
    invoke-virtual {v2, v3}, Lcom/ss/ugc/effectplatform/model/Effect;->setName(Ljava/lang/String;)V

    .line 19
    iget-object v3, v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    if-eqz v3, :cond_7d

    goto :goto_7e

    :cond_7d
    move-object v3, v4

    :goto_7e
    invoke-virtual {v2, v3}, Lcom/ss/ugc/effectplatform/model/Effect;->setHint(Ljava/lang/String;)V

    .line 20
    iget-object v3, v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->concatPrefixWithUri(Ljava/util/List;Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/ugc/effectplatform/model/Effect;->setFile_url(Lcom/ss/ugc/effectplatform/model/UrlModel;)V

    .line 21
    iget-object v3, v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    if-eqz v3, :cond_8f

    goto :goto_94

    :cond_8f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_94
    invoke-virtual {v2, v3}, Lcom/ss/ugc/effectplatform/model/Effect;->setTypes(Ljava/util/List;)V

    .line 22
    iget-object v3, v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->concatPrefixWithUri(Ljava/util/List;Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/ugc/effectplatform/model/Effect;->setHint_icon(Lcom/ss/ugc/effectplatform/model/UrlModel;)V

    .line 23
    iget-object v3, v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->concatPrefixWithUri(Ljava/util/List;Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ss/ugc/effectplatform/model/Effect;->setIcon_url(Lcom/ss/ugc/effectplatform/model/UrlModel;)V

    .line 24
    iget-object v1, v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    if-eqz v1, :cond_ae

    goto :goto_b3

    :cond_ae
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_b3
    invoke-virtual {v2, v1}, Lcom/ss/ugc/effectplatform/model/Effect;->setRequirements(Ljava/util/List;)V

    .line 25
    iget-object v0, v0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    if-eqz v0, :cond_bb

    move-object v4, v0

    :cond_bb
    invoke-virtual {v2, v4}, Lcom/ss/ugc/effectplatform/model/Effect;->setId(Ljava/lang/String;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformEffect(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->file_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->icon_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->types:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hint_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->hint_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requirements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PlatformEffect;->requirements:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
