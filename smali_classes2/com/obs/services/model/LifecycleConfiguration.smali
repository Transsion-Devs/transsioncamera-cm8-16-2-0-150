.class public Lcom/obs/services/model/LifecycleConfiguration;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/LifecycleConfiguration$Rule;,
        Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;,
        Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;,
        Lcom/obs/services/model/LifecycleConfiguration$Transition;,
        Lcom/obs/services/model/LifecycleConfiguration$Expiration;,
        Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;,
        Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;
    }
.end annotation


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    return-void
.end method

.method public static setDate(Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;Ljava/util/Date;)V
    .registers 2

    if-eqz p0, :cond_4

    .line 93
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    :cond_4
    return-void
.end method

.method public static setDays(Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;Ljava/lang/Integer;)V
    .registers 2

    if-eqz p0, :cond_4

    .line 87
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    :cond_4
    return-void
.end method

.method public static setStorageClass(Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    if-eqz p0, :cond_4

    .line 99
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    :cond_4
    return-void
.end method


# virtual methods
.method public addRule(Lcom/obs/services/model/LifecycleConfiguration$Rule;)V
    .registers 3

    .line 62
    invoke-virtual {p0}, Lcom/obs/services/model/LifecycleConfiguration;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/model/LifecycleConfiguration;->getRules()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 961
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 964
    :cond_12
    check-cast p1, Lcom/obs/services/model/LifecycleConfiguration;

    .line 965
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    if-eqz p0, :cond_21

    iget-object p1, p1, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_25

    :cond_21
    iget-object p0, p1, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    if-eqz p0, :cond_26

    :goto_25
    return v1

    :cond_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/LifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    .line 52
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 973
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public newRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/obs/services/model/LifecycleConfiguration$Rule;
    .registers 5

    .line 80
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/obs/services/model/LifecycleConfiguration$Rule;-><init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    invoke-virtual {p0}, Lcom/obs/services/model/LifecycleConfiguration;->getRules()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifecycleConfiguration [rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration;->rules:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
