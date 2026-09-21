.class public Lcom/obs/services/model/WebsiteConfiguration;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private key:Ljava/lang/String;

.field private redirectAllRequestsTo:Lcom/obs/services/model/RedirectAllRequest;

.field private routeRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/RouteRule;",
            ">;"
        }
    .end annotation
.end field

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/obs/services/model/WebsiteConfiguration;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getRedirectAllRequestsTo()Lcom/obs/services/model/RedirectAllRequest;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/obs/services/model/WebsiteConfiguration;->redirectAllRequestsTo:Lcom/obs/services/model/RedirectAllRequest;

    return-object p0
.end method

.method public getRouteRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/RouteRule;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/obs/services/model/WebsiteConfiguration;->routeRules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/WebsiteConfiguration;->routeRules:Ljava/util/List;

    .line 81
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/WebsiteConfiguration;->routeRules:Ljava/util/List;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/obs/services/model/WebsiteConfiguration;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/obs/services/model/WebsiteConfiguration;->key:Ljava/lang/String;

    return-void
.end method

.method public setRedirectAllRequestsTo(Lcom/obs/services/model/RedirectAllRequest;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/obs/services/model/WebsiteConfiguration;->redirectAllRequestsTo:Lcom/obs/services/model/RedirectAllRequest;

    return-void
.end method

.method public setRouteRules(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/RouteRule;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/obs/services/model/WebsiteConfiguration;->routeRules:Ljava/util/List;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/obs/services/model/WebsiteConfiguration;->suffix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebsiteConfigration [suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/WebsiteConfiguration;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/WebsiteConfiguration;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", redirectAllRequestsTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/WebsiteConfiguration;->redirectAllRequestsTo:Lcom/obs/services/model/RedirectAllRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", routeRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/WebsiteConfiguration;->routeRules:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
