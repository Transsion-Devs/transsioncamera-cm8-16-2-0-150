.class public Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private cursor:I

.field private extra:Ljava/lang/String;

.field private has_more:Z

.field private search_tips:Ljava/lang/String;

.field private sticker_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/ProviderEffect;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 0
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;-><init>(Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/ProviderEffect;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "sticker_list"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->search_tips:Ljava/lang/String;

    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->cursor:I

    iput-boolean p3, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->has_more:Z

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->sticker_list:Ljava/util/List;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->subtitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->extra:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p8, p7, 0x2

    const/4 v1, 0x0

    if-eqz p8, :cond_c

    move p2, v1

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_11

    move p3, v1

    :cond_11
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1a

    .line 11
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_1a
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1f

    move-object p5, v0

    :cond_1f
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_24

    move-object p6, v0

    .line 13
    :cond_24
    invoke-direct/range {p0 .. p6}, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;-><init>(Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCursor()I
    .registers 1

    .line 9
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->cursor:I

    return p0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getHas_more()Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->has_more:Z

    return p0
.end method

.method public getSearch_tips()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->search_tips:Ljava/lang/String;

    return-object p0
.end method

.method public getSticker_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/ProviderEffect;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->sticker_list:Ljava/util/List;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method public setCursor(I)V
    .registers 2

    .line 9
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->cursor:I

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->extra:Ljava/lang/String;

    return-void
.end method

.method public setHas_more(Z)V
    .registers 2

    .line 10
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->has_more:Z

    return-void
.end method

.method public setSearch_tips(Ljava/lang/String;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->search_tips:Ljava/lang/String;

    return-void
.end method

.method public setSticker_list(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/ProviderEffect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->sticker_list:Ljava/util/List;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;->subtitle:Ljava/lang/String;

    return-void
.end method
