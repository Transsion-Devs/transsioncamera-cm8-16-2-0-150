.class public Lcom/obs/services/model/BucketLoggingConfiguration;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private agency:Ljava/lang/String;

.field private logfilePrefix:Ljava/lang/String;

.field private targetBucketName:Ljava/lang/String;

.field private final targetGrantsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/GrantAndPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetGrantsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetGrantsList:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetBucketName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->logfilePrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addTargetGrant(Lcom/obs/services/model/GrantAndPermission;)V
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetGrantsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAgency()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->agency:Ljava/lang/String;

    return-object p0
.end method

.method public getLogfilePrefix()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->logfilePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetBucketName()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetGrants()[Lcom/obs/services/model/GrantAndPermission;
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetGrantsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/obs/services/model/GrantAndPermission;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/obs/services/model/GrantAndPermission;

    return-object p0
.end method

.method public isLoggingEnabled()Z
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetBucketName:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->logfilePrefix:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetGrantsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public setAgency(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->agency:Ljava/lang/String;

    return-void
.end method

.method public setLogfilePrefix(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->logfilePrefix:Ljava/lang/String;

    return-void
.end method

.method public setTargetBucketName(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetBucketName:Ljava/lang/String;

    return-void
.end method

.method public setTargetGrants([Lcom/obs/services/model/GrantAndPermission;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetGrantsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object p0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetGrantsList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketLoggingConfiguration [targetBucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetBucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logfilePrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->logfilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", agency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->agency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetGrantsList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketLoggingConfiguration;->targetGrantsList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
