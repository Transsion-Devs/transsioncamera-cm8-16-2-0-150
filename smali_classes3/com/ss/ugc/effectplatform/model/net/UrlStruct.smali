.class public final Lcom/ss/ugc/effectplatform/model/net/UrlStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public DataSize:Ljava/lang/Long;

.field public FileCs:Ljava/lang/String;

.field public FileHash:Ljava/lang/String;

.field public Height:Ljava/lang/Integer;

.field public PlayerAccessKey:Ljava/lang/String;

.field public Uri:Ljava/lang/String;

.field public UrlKey:Ljava/lang/String;

.field public UrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 13

    .line 0
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->Uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->UrlList:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->DataSize:Ljava/lang/Long;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->Width:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->Height:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->UrlKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->FileHash:Ljava/lang/String;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->FileCs:Ljava/lang/String;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;->PlayerAccessKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_1f

    move-object p6, v0

    :cond_1f
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_24

    move-object p7, v0

    :cond_24
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_29

    move-object p8, v0

    :cond_29
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_2e

    move-object p9, v0

    .line 180
    :cond_2e
    invoke-direct/range {p0 .. p9}, Lcom/ss/ugc/effectplatform/model/net/UrlStruct;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
