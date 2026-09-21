.class public Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# instance fields
.field private deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private failedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isQuiet:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public addDeletedObject(Ljava/lang/String;)V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->deletedObjects:Ljava/util/List;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->deletedObjects:Ljava/util/List;

    .line 29
    :cond_b
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->deletedObjects:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFailedObjects(Ljava/lang/String;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->failedObjects:Ljava/util/List;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->failedObjects:Ljava/util/List;

    .line 36
    :cond_b
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->failedObjects:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->deletedObjects:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    :cond_7
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->failedObjects:Ljava/util/List;

    if-eqz p0, :cond_e

    .line 21
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_e
    return-void
.end method

.method public getDeletedObjects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->deletedObjects:Ljava/util/List;

    return-object p0
.end method

.method public getFailedObjects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->failedObjects:Ljava/util/List;

    return-object p0
.end method

.method public getQuiet()Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->isQuiet:Z

    return p0
.end method

.method public setQuiet(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;->isQuiet:Z

    return-void
.end method
