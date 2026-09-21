.class public Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/model/ProviderEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerBean"
.end annotation


# instance fields
.field private height:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 0
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->width:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->height:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->size:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    move-object p4, v0

    .line 62
    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->height:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->size:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->width:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->height:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->size:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ProviderEffect$StickerBean;->width:Ljava/lang/String;

    return-void
.end method
