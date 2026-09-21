.class public Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/service/AbstractRequestConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransResult"
.end annotation


# instance fields
.field private body:Lokhttp3/RequestBody;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->userHeaders:Ljava/util/Map;

    .line 77
    iput-object p1, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->headers:Ljava/util/Map;

    .line 78
    iput-object p2, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->params:Ljava/util/Map;

    .line 79
    iput-object p3, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->body:Lokhttp3/RequestBody;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lokhttp3/RequestBody;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0, p2}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;-><init>(Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;)V

    return-void
.end method


# virtual methods
.method public addUserHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 94
    iget-object p0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->userHeaders:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBody()Lokhttp3/RequestBody;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->body:Lokhttp3/RequestBody;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->headers:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->headers:Ljava/util/Map;

    .line 86
    :cond_b
    iget-object p0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->params:Ljava/util/Map;

    .line 101
    :cond_b
    iget-object p0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->params:Ljava/util/Map;

    return-object p0
.end method

.method public getUserHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->userHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setBody(Lokhttp3/RequestBody;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->body:Lokhttp3/RequestBody;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->params:Ljava/util/Map;

    return-void
.end method
