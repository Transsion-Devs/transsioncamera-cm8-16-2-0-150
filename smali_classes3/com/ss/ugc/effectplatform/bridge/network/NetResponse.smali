.class public final Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bodyStream:Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

.field private contentLength:J

.field private errorMsg:Ljava/lang/String;

.field private headers:Ljava/util/Map;

.field private statusCode:I


# direct methods
.method public constructor <init>(ILcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;JLjava/lang/String;)V
    .registers 14

    const-string v0, "bodyStream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;-><init>(ILcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(ILcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;JLjava/lang/String;Ljava/util/Map;)V
    .registers 8

    const-string v0, "bodyStream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->statusCode:I

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->bodyStream:Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    iput-wide p3, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->contentLength:J

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->errorMsg:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->headers:Ljava/util/Map;

    if-eqz p6, :cond_9e

    .line 33
    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_9e

    .line 704
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_48

    .line 33
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    const-string p5, "(this as java.lang.String).toLowerCase()"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "x-tt-logid"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_23

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_48
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_50
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9e

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->headers:Ljava/util/Map;

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-eqz p1, :cond_67

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_68

    :cond_67
    move-object p1, p3

    :goto_68
    if-eqz p1, :cond_9e

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_71

    goto :goto_9e

    .line 35
    :cond_71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "x-tt-logid: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->headers:Ljava/util/Map;

    if-eqz p5, :cond_8b

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    :cond_8b
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " errorMsg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->errorMsg:Ljava/lang/String;

    :cond_9e
    :goto_9e
    return-void
.end method


# virtual methods
.method public final getBodyStream()Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->bodyStream:Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    return-object p0
.end method

.method public final getContentLength()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->contentLength:J

    return-wide v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatusCode()I
    .registers 1

    .line 25
    iget p0, p0, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->statusCode:I

    return p0
.end method
