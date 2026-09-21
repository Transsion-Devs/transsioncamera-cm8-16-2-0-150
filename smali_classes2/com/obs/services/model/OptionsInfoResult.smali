.class public Lcom/obs/services/model/OptionsInfoResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field protected allowHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected allowMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected allowOrigin:Ljava/lang/String;

.field protected exposeHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected maxAge:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/obs/services/model/OptionsInfoResult;->allowOrigin:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/obs/services/model/OptionsInfoResult;->allowHeaders:Ljava/util/List;

    .line 40
    iput p3, p0, Lcom/obs/services/model/OptionsInfoResult;->maxAge:I

    .line 41
    iput-object p4, p0, Lcom/obs/services/model/OptionsInfoResult;->allowMethods:Ljava/util/List;

    .line 42
    iput-object p5, p0, Lcom/obs/services/model/OptionsInfoResult;->exposeHeaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllowHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowHeaders:Ljava/util/List;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowHeaders:Ljava/util/List;

    .line 66
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowHeaders:Ljava/util/List;

    return-object p0
.end method

.method public getAllowMethods()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowMethods:Ljava/util/List;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowMethods:Ljava/util/List;

    .line 88
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowMethods:Ljava/util/List;

    return-object p0
.end method

.method public getAllowOrigin()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/obs/services/model/OptionsInfoResult;->allowOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getExposeHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->exposeHeaders:Ljava/util/List;

    if-nez v0, :cond_b

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/OptionsInfoResult;->exposeHeaders:Ljava/util/List;

    .line 100
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/OptionsInfoResult;->exposeHeaders:Ljava/util/List;

    return-object p0
.end method

.method public getMaxAge()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/obs/services/model/OptionsInfoResult;->maxAge:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionsInfoResult [allowOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/OptionsInfoResult;->allowOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/OptionsInfoResult;->allowHeaders:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/OptionsInfoResult;->maxAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/OptionsInfoResult;->allowMethods:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exposeHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/OptionsInfoResult;->exposeHeaders:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
