.class public Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private gifs:Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;

.field private search_tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;->search_tips:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;->gifs:Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;)V

    return-void
.end method


# virtual methods
.method public getGifs()Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;->gifs:Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;

    return-object p0
.end method

.method public getSearch_tips()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;->search_tips:Ljava/lang/String;

    return-object p0
.end method

.method public setGifs(Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;->gifs:Lcom/ss/ugc/effectplatform/model/ProviderEffectModel;

    return-void
.end method

.method public setSearch_tips(Ljava/lang/String;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/GifProviderEffectModel;->search_tips:Ljava/lang/String;

    return-void
.end method
