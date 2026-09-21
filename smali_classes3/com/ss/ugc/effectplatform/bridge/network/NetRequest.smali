.class public final Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bodyParams:Ljava/util/Map;

.field private final contentType:Ljava/lang/String;

.field private final headers:Ljava/util/Map;

.field private final method:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

.field private final url:Ljava/lang/String;

.field private final useCommParam:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)V
    .registers 8

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;->method:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;->headers:Ljava/util/Map;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;->bodyParams:Ljava/util/Map;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;->contentType:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;->useCommParam:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_6

    .line 16
    sget-object p2, Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;->GET:Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;

    :cond_6
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_e

    move-object v3, p8

    goto :goto_f

    :cond_e
    move-object v3, p3

    :goto_f
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_15

    move-object v4, p8

    goto :goto_16

    :cond_15
    move-object v4, p4

    :goto_16
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_1c

    .line 19
    const-string p5, "application/x-www-form-urlencoded"

    :cond_1c
    move-object v5, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_22

    const/4 p6, 0x1

    :cond_22
    move-object v0, p0

    move-object v1, p1

    move v6, p6

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/bridge/network/HTTPMethod;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;->url:Ljava/lang/String;

    return-object p0
.end method
