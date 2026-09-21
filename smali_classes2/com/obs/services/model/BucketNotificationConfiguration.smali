.class public Lcom/obs/services/model/BucketNotificationConfiguration;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private functionGraphConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/FunctionGraphConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private topicConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/TopicConfiguration;",
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
.method public addFunctionGraphConfiguration(Lcom/obs/services/model/FunctionGraphConfiguration;)Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/obs/services/model/BucketNotificationConfiguration;->getFunctionGraphConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTopicConfiguration(Lcom/obs/services/model/TopicConfiguration;)Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 3

    .line 36
    invoke-virtual {p0}, Lcom/obs/services/model/BucketNotificationConfiguration;->getTopicConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getFunctionGraphConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/FunctionGraphConfiguration;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->functionGraphConfigurations:Ljava/util/List;

    if-nez v0, :cond_b

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->functionGraphConfigurations:Ljava/util/List;

    .line 74
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->functionGraphConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public getTopicConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/TopicConfiguration;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    .line 62
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public setFunctionGraphConfigurations(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/FunctionGraphConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->functionGraphConfigurations:Ljava/util/List;

    return-void
.end method

.method public setTopicConfigurations(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/TopicConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketNotificationConfiguration [topicConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", functionGraphConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketNotificationConfiguration;->functionGraphConfigurations:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
