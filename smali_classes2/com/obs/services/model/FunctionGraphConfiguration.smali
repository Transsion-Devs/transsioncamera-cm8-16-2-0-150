.class public Lcom/obs/services/model/FunctionGraphConfiguration;
.super Lcom/obs/services/model/AbstractNotification;
.source "SourceFile"


# instance fields
.field private functionGraph:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/AbstractNotification;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/AbstractNotification$Filter;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/AbstractNotification$Filter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/obs/services/model/EventTypeEnum;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p4}, Lcom/obs/services/model/AbstractNotification;-><init>(Ljava/lang/String;Lcom/obs/services/model/AbstractNotification$Filter;Ljava/util/List;)V

    .line 45
    iput-object p3, p0, Lcom/obs/services/model/FunctionGraphConfiguration;->functionGraph:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFunctionGraph()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/obs/services/model/FunctionGraphConfiguration;->functionGraph:Ljava/lang/String;

    return-object p0
.end method

.method public setFunctionGraph(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/obs/services/model/FunctionGraphConfiguration;->functionGraph:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FunctionGraphConfiguration [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AbstractNotification;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", functionGraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/FunctionGraphConfiguration;->functionGraph:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AbstractNotification;->events:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification;->filter:Lcom/obs/services/model/AbstractNotification$Filter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
