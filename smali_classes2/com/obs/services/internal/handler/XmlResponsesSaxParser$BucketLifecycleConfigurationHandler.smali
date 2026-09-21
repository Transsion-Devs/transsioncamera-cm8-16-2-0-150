.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketLifecycleConfigurationHandler"
.end annotation


# instance fields
.field private config:Lcom/obs/services/model/LifecycleConfiguration;

.field private latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

.field private latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 2274
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 2267
    new-instance p1, Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p1}, Lcom/obs/services/model/LifecycleConfiguration;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    return-void
.end method


# virtual methods
.method public endDate(Ljava/lang/String;)V
    .registers 2

    .line 2313
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration;->setDate(Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;Ljava/util/Date;)V

    return-void
.end method

.method public endDays(Ljava/lang/String;)V
    .registers 2

    .line 2321
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration;->setDays(Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;Ljava/lang/Integer;)V

    return-void
.end method

.method public endDaysAfterInitiation(Ljava/lang/String;)V
    .registers 2

    .line 2306
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {p0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getAbortIncompleteMultipartUpload()Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;->setDaysAfterInitiation(I)V

    return-void
.end method

.method public endID(Ljava/lang/String;)V
    .registers 2

    .line 2329
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public endKey(Ljava/lang/String;)V
    .registers 4

    .line 2345
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2346
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    new-instance v1, Lcom/obs/services/model/BucketTagInfo$TagSet;

    invoke-direct {v1}, Lcom/obs/services/model/BucketTagInfo$TagSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->setTagSet(Lcom/obs/services/model/BucketTagInfo$TagSet;)V

    .line 2348
    :cond_12
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {p0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->addTag(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    return-void
.end method

.method public endNoncurrentDays(Ljava/lang/String;)V
    .registers 2

    .line 2317
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration;->setDays(Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;Ljava/lang/Integer;)V

    return-void
.end method

.method public endPrefix(Ljava/lang/String;)V
    .registers 2

    .line 2333
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->setPrefix(Ljava/lang/String;)V

    return-void
.end method

.method public endRule(Ljava/lang/String;)V
    .registers 2

    .line 2341
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {p1, p0}, Lcom/obs/services/model/LifecycleConfiguration;->addRule(Lcom/obs/services/model/LifecycleConfiguration$Rule;)V

    return-void
.end method

.method public endStatus(Ljava/lang/String;)V
    .registers 3

    .line 2337
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    const-string v0, "Enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->setEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public endStorageClass(Ljava/lang/String;)V
    .registers 2

    .line 2309
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    invoke-static {p1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/obs/services/model/LifecycleConfiguration;->setStorageClass(Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;Lcom/obs/services/model/StorageClassEnum;)V

    return-void
.end method

.method public endValue(Ljava/lang/String;)V
    .registers 3

    .line 2352
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2353
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2354
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {p0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->setValue(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public getLifecycleConfig()Lcom/obs/services/model/LifecycleConfiguration;
    .registers 1

    .line 2278
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    return-object p0
.end method

.method public startAbortIncompleteMultipartUpload()V
    .registers 3

    .line 2303
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    new-instance v1, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    invoke-virtual {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->setAbortIncompleteMultipartUpload(Lcom/obs/services/model/LifecycleConfiguration$AbortIncompleteMultipartUpload;)V

    return-void
.end method

.method public startExpiration()V
    .registers 3

    .line 2282
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$Expiration;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$Expiration;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    .line 2283
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {p0, v0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->setExpiration(Lcom/obs/services/model/LifecycleConfiguration$Expiration;)V

    return-void
.end method

.method public startNoncurrentVersionExpiration()V
    .registers 3

    .line 2287
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    .line 2288
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {p0, v0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->setNoncurrentVersionExpiration(Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionExpiration;)V

    return-void
.end method

.method public startNoncurrentVersionTransition()V
    .registers 3

    .line 2298
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    .line 2299
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getNoncurrentVersionTransitions()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    check-cast p0, Lcom/obs/services/model/LifecycleConfiguration$NoncurrentVersionTransition;

    .line 2300
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startRule()V
    .registers 3

    .line 2325
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$Rule;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    return-void
.end method

.method public startTransition()V
    .registers 3

    .line 2293
    new-instance v0, Lcom/obs/services/model/LifecycleConfiguration$Transition;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->config:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/obs/services/model/LifecycleConfiguration$Transition;-><init>(Lcom/obs/services/model/LifecycleConfiguration;)V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    .line 2294
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestRule:Lcom/obs/services/model/LifecycleConfiguration$Rule;

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration$Rule;->getTransitions()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->latestTimeEvent:Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    check-cast p0, Lcom/obs/services/model/LifecycleConfiguration$Transition;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
