.class public final Lcom/ss/ugc/effectplatform/model/net/PanelDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private extra:Ljava/lang/String;

.field private icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags_updated_at:Ljava/lang/String;

.field private text:Ljava/lang/String;


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

    invoke-direct/range {v0 .. v7}, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

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

    if-eqz p7, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1a

    move-object p5, v0

    .line 32
    :cond_1a
    invoke-direct/range {p0 .. p5}, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/net/PanelDesc;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    :cond_1e
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->copy(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/net/PanelDesc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ugc/effectplatform/model/net/PanelDesc;"
        }
    .end annotation

    new-instance p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    invoke-direct/range {p0 .. p5}, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_3d

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    if-eqz v0, :cond_3b

    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    return p0
.end method

.method public final getExtra()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public final getIcon()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public final getTags()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    return-object p0
.end method

.method public final getTags_updated_at()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    return v0
.end method

.method public final setExtra(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public final setTags(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    return-void
.end method

.method public final setTags_updated_at(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanelDesc(text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags_updated_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags_updated_at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PanelDesc;->tags:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
