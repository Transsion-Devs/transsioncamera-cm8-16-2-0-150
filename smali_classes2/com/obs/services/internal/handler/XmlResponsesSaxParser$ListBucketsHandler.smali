.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketsHandler"
.end annotation


# instance fields
.field private final buckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation
.end field

.field private bucketsOwner:Lcom/obs/services/model/Owner;

.field private currentBucket:Lcom/obs/services/model/ObsBucket;

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private truncated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 719
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->buckets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 769
    const-string v0, "Marker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 770
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->marker:Ljava/lang/String;

    goto :goto_33

    .line 771
    :cond_b
    const-string v0, "MaxKeys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 772
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->maxKeys:I

    goto :goto_33

    .line 773
    :cond_1a
    const-string v0, "IsTruncated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 774
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->truncated:Z

    goto :goto_33

    .line 775
    :cond_29
    const-string v0, "NextMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 776
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->nextMarker:Ljava/lang/String;

    .line 778
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->bucketsOwner:Lcom/obs/services/model/Owner;

    if-eqz v0, :cond_52

    .line 779
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 780
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->bucketsOwner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/Owner;->setId(Ljava/lang/String;)V

    goto :goto_52

    .line 781
    :cond_45
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 782
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->bucketsOwner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/Owner;->setDisplayName(Ljava/lang/String;)V

    .line 786
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->currentBucket:Lcom/obs/services/model/ObsBucket;

    if-eqz v0, :cond_113

    .line 787
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_114

    goto :goto_a0

    :sswitch_5f
    const-string v1, "Bucket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto :goto_a0

    :cond_68
    const/4 v2, 0x5

    goto :goto_a0

    :sswitch_6a
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    goto :goto_a0

    :cond_73
    const/4 v2, 0x4

    goto :goto_a0

    :sswitch_75
    const-string v1, "CreationDate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    goto :goto_a0

    :cond_7e
    const/4 v2, 0x3

    goto :goto_a0

    :sswitch_80
    const-string v1, "ClusterType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    goto :goto_a0

    :cond_89
    const/4 v2, 0x2

    goto :goto_a0

    :sswitch_8b
    const-string v1, "Name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    goto :goto_a0

    :cond_94
    const/4 v2, 0x1

    goto :goto_a0

    :sswitch_96
    const-string v1, "BucketType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v2, 0x0

    :goto_a0
    packed-switch v2, :pswitch_data_12e

    goto :goto_113

    .line 789
    :pswitch_a4
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->bucketsOwner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, p1}, Lcom/obs/services/model/ObsBucket;->setOwner(Lcom/obs/services/model/Owner;)V

    .line 790
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->buckets:Ljava/util/List;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->currentBucket:Lcom/obs/services/model/ObsBucket;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 796
    :pswitch_b1
    invoke-virtual {v0, p2}, Lcom/obs/services/model/ObsBucket;->setLocation(Ljava/lang/String;)V

    return-void

    .line 799
    :pswitch_b5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".000Z"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 801
    :try_start_c6
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->currentBucket:Lcom/obs/services/model/ObsBucket;

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/model/ObsBucket;->setCreationDate(Ljava/util/Date;)V
    :try_end_cf
    .catch Ljava/text/ParseException; {:try_start_c6 .. :try_end_cf} :catch_d0

    return-void

    :catch_d0
    move-exception p0

    .line 803
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p2

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_113

    .line 804
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-ISO8601 date for CreationDate in list buckets output: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_113

    .line 816
    :pswitch_f4
    invoke-virtual {v0, p2}, Lcom/obs/services/model/S3Bucket;->setClustertype(Ljava/lang/String;)V

    return-void

    .line 793
    :pswitch_f8
    invoke-virtual {v0, p2}, Lcom/obs/services/model/ObsBucket;->setBucketName(Ljava/lang/String;)V

    return-void

    .line 809
    :pswitch_fc
    const-string p1, "POSIX"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10c

    .line 810
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->currentBucket:Lcom/obs/services/model/ObsBucket;

    sget-object p1, Lcom/obs/services/model/BucketTypeEnum;->PFS:Lcom/obs/services/model/BucketTypeEnum;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObsBucket;->setBucketType(Lcom/obs/services/model/BucketTypeEnum;)V

    return-void

    .line 812
    :cond_10c
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->currentBucket:Lcom/obs/services/model/ObsBucket;

    sget-object p1, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/ObsBucket;->setBucketType(Lcom/obs/services/model/BucketTypeEnum;)V

    :cond_113
    :goto_113
    return-void

    :sswitch_data_114
    .sparse-switch
        -0x4696db9c -> :sswitch_96
        0x24eeab -> :sswitch_8b
        0x1f5f3034 -> :sswitch_80
        0x684c9f4d -> :sswitch_75
        0x752a03d5 -> :sswitch_6a
        0x773f360a -> :sswitch_5f
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_b5
        :pswitch_b1
        :pswitch_a4
    .end packed-switch
.end method

.method public getBuckets()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->buckets:Ljava/util/List;

    return-object p0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 1

    .line 747
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 751
    iget p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->maxKeys:I

    return p0
.end method

.method public getNextMarker()Ljava/lang/String;
    .registers 1

    .line 755
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 739
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->bucketsOwner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 743
    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->truncated:Z

    return p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 760
    const-string v0, "Bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 761
    new-instance p1, Lcom/obs/services/model/ObsBucket;

    invoke-direct {p1}, Lcom/obs/services/model/ObsBucket;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->currentBucket:Lcom/obs/services/model/ObsBucket;

    return-void

    .line 762
    :cond_10
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 763
    new-instance p1, Lcom/obs/services/model/Owner;

    invoke-direct {p1}, Lcom/obs/services/model/Owner;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketsHandler;->bucketsOwner:Lcom/obs/services/model/Owner;

    :cond_1f
    return-void
.end method
