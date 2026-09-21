.class public Lcom/obs/services/model/ReplicationConfiguration;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/ReplicationConfiguration$Destination;,
        Lcom/obs/services/model/ReplicationConfiguration$Rule;
    }
.end annotation


# instance fields
.field private agency:Ljava/lang/String;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ReplicationConfiguration$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgency()Ljava/lang/String;
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration;->agency:Ljava/lang/String;

    return-object p0
.end method

.method public getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ReplicationConfiguration$Rule;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/obs/services/model/ReplicationConfiguration;->rules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/ReplicationConfiguration;->rules:Ljava/util/List;

    .line 199
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration;->rules:Ljava/util/List;

    return-object p0
.end method

.method public setAgency(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration;->agency:Ljava/lang/String;

    return-void
.end method

.method public setRules(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ReplicationConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/obs/services/model/ReplicationConfiguration;->rules:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplicationConfiguration [agency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ReplicationConfiguration;->agency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ReplicationConfiguration;->rules:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
