.class public abstract Lcom/obs/services/SecretFlexibleBucketObsClient;
.super Lcom/obs/services/ObsClient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/obs/services/ObsConfiguration;)V
    .registers 3

    .line 53
    const-string v0, ""

    invoke-direct {p0, v0, v0, p1}, Lcom/obs/services/SecretFlexibleBucketObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 63
    const-string v0, ""

    invoke-direct {p0, v0, v0, p1}, Lcom/obs/services/SecretFlexibleBucketObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V
    .registers 5

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/obs/services/ObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected clearContextProviderCredentials()V
    .registers 1

    .line 1207
    invoke-static {}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->getInstance()Lcom/obs/services/internal/security/ProviderCredentialThreadContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->clearProviderCredentials()V

    return-void
.end method

.method public createBucket(Lcom/obs/services/model/ObsBucket;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsBucket;
    .registers 5

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/model/ObsBucket;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->createBucket(Lcom/obs/services/model/ObsBucket;)Lcom/obs/services/model/ObsBucket;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 132
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 133
    throw p1
.end method

.method public createBucket(Lcom/obs/services/model/ObsBucket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsBucket;
    .registers 6

    .line 138
    invoke-virtual {p1}, Lcom/obs/services/model/ObsBucket;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->createBucket(Lcom/obs/services/model/ObsBucket;)Lcom/obs/services/model/ObsBucket;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 142
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 143
    throw p1
.end method

.method public deleteBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->deleteBucket(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 189
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 190
    throw p1
.end method

.method public deleteBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 195
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->deleteBucket(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 199
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 200
    throw p1
.end method

.method public deleteBucketCors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 423
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->deleteBucketCors(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 427
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 428
    throw p1
.end method

.method public deleteBucketCors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 433
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->deleteBucketCors(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 437
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 438
    throw p1
.end method

.method public deleteBucketLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 709
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketLifecycle(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 713
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 714
    throw p1
.end method

.method public deleteBucketLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 730
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketLifecycle(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 734
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 735
    throw p1
.end method

.method public deleteBucketLifecycleConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->deleteBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 703
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 704
    throw p1
.end method

.method public deleteBucketLifecycleConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 720
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->deleteBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 724
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 725
    throw p1
.end method

.method public deleteBucketPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 780
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketPolicy(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 784
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 785
    throw p1
.end method

.method public deleteBucketPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 790
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketPolicy(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 794
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 795
    throw p1
.end method

.method public deleteBucketReplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 1081
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketReplication(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1085
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1086
    throw p1
.end method

.method public deleteBucketReplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 1102
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketReplication(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1106
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1107
    throw p1
.end method

.method public deleteBucketReplicationConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1071
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->deleteBucketReplicationConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1075
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1076
    throw p1
.end method

.method public deleteBucketReplicationConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1092
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->deleteBucketReplicationConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1096
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1097
    throw p1
.end method

.method public deleteBucketTagging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 965
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketTagging(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 969
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 970
    throw p1
.end method

.method public deleteBucketTagging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 975
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketTagging(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 979
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 980
    throw p1
.end method

.method public deleteBucketWebsite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 895
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketWebsite(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 899
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 900
    throw p1
.end method

.method public deleteBucketWebsite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 916
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketWebsite(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 920
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 921
    throw p1
.end method

.method public deleteBucketWebsiteConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 885
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->deleteBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 889
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 890
    throw p1
.end method

.method public deleteBucketWebsiteConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 906
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->deleteBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 910
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 911
    throw p1
.end method

.method public getBucketAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 4

    .line 244
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 248
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 249
    throw p1
.end method

.method public getBucketAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 5

    .line 254
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 258
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 259
    throw p1
.end method

.method public getBucketCors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketCors;
    .registers 4

    .line 404
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketCors(Ljava/lang/String;)Lcom/obs/services/model/BucketCors;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 408
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 409
    throw p1
.end method

.method public getBucketCors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketCors;
    .registers 5

    .line 414
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketCors(Ljava/lang/String;)Lcom/obs/services/model/BucketCors;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 418
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 419
    throw p1
.end method

.method public getBucketLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 4

    .line 625
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketLifecycle(Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 629
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 630
    throw p1
.end method

.method public getBucketLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 5

    .line 646
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketLifecycle(Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 650
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 651
    throw p1
.end method

.method public getBucketLifecycleConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->getBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 619
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 620
    throw p1
.end method

.method public getBucketLifecycleConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->getBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 640
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 641
    throw p1
.end method

.method public getBucketLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketLocationResponse;
    .registers 4

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketLocationV2(Ljava/lang/String;)Lcom/obs/services/model/BucketLocationResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 310
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 311
    throw p1
.end method

.method public getBucketLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketLocationResponse;
    .registers 5

    .line 316
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketLocationV2(Ljava/lang/String;)Lcom/obs/services/model/BucketLocationResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 320
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 321
    throw p1
.end method

.method public getBucketLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 4

    .line 476
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketLogging(Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 480
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 481
    throw p1
.end method

.method public getBucketLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 5

    .line 497
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketLogging(Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 501
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 502
    throw p1
.end method

.method public getBucketLoggingConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->getBucketLoggingConfiguration(Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 470
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 471
    throw p1
.end method

.method public getBucketLoggingConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->getBucketLoggingConfiguration(Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 491
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 492
    throw p1
.end method

.method public getBucketMetadata(Lcom/obs/services/model/BucketMetadataInfoRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult;
    .registers 5

    .line 224
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketMetadata(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 228
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 229
    throw p1
.end method

.method public getBucketMetadata(Lcom/obs/services/model/BucketMetadataInfoRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketMetadataInfoResult;
    .registers 6

    .line 234
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketMetadata(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 239
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 240
    throw p1
.end method

.method public getBucketNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 4

    .line 1112
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketNotification(Ljava/lang/String;)Lcom/obs/services/model/BucketNotificationConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1116
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1117
    throw p1
.end method

.method public getBucketNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 5

    .line 1122
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketNotification(Ljava/lang/String;)Lcom/obs/services/model/BucketNotificationConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1126
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1127
    throw p1
.end method

.method public getBucketPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketPolicyResponse;
    .registers 4

    .line 740
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketPolicyV2(Ljava/lang/String;)Lcom/obs/services/model/BucketPolicyResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 744
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 745
    throw p1
.end method

.method public getBucketPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketPolicyResponse;
    .registers 5

    .line 750
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketPolicyV2(Ljava/lang/String;)Lcom/obs/services/model/BucketPolicyResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 754
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 755
    throw p1
.end method

.method public getBucketQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketQuota;
    .registers 4

    .line 345
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketQuota(Ljava/lang/String;)Lcom/obs/services/model/BucketQuota;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 349
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 350
    throw p1
.end method

.method public getBucketQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketQuota;
    .registers 5

    .line 355
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketQuota(Ljava/lang/String;)Lcom/obs/services/model/BucketQuota;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 359
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 360
    throw p1
.end method

.method public getBucketReplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 4

    .line 1039
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketReplication(Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1043
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1044
    throw p1
.end method

.method public getBucketReplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 5

    .line 1060
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketReplication(Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1064
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1065
    throw p1
.end method

.method public getBucketReplicationConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->getBucketReplicationConfiguration(Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1033
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1034
    throw p1
.end method

.method public getBucketReplicationConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1050
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->getBucketReplicationConfiguration(Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1054
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1055
    throw p1
.end method

.method public getBucketStorageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketStorageInfo;
    .registers 4

    .line 326
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketStorageInfo(Ljava/lang/String;)Lcom/obs/services/model/BucketStorageInfo;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 330
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 331
    throw p1
.end method

.method public getBucketStorageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketStorageInfo;
    .registers 5

    .line 336
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketStorageInfo(Ljava/lang/String;)Lcom/obs/services/model/BucketStorageInfo;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 340
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 341
    throw p1
.end method

.method public getBucketStoragePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    .registers 4

    .line 1176
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketStoragePolicy(Ljava/lang/String;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1180
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1181
    throw p1
.end method

.method public getBucketStoragePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    .registers 5

    .line 1186
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketStoragePolicy(Ljava/lang/String;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1190
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1191
    throw p1
.end method

.method public getBucketTagging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo;
    .registers 4

    .line 945
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketTagging(Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 949
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 950
    throw p1
.end method

.method public getBucketTagging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo;
    .registers 5

    .line 955
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketTagging(Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 959
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 960
    throw p1
.end method

.method public getBucketVersioning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketVersioningConfiguration;
    .registers 4

    .line 594
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketVersioning(Ljava/lang/String;)Lcom/obs/services/model/BucketVersioningConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 598
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 599
    throw p1
.end method

.method public getBucketVersioning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketVersioningConfiguration;
    .registers 5

    .line 604
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->getBucketVersioning(Ljava/lang/String;)Lcom/obs/services/model/BucketVersioningConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 608
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 609
    throw p1
.end method

.method public getBucketWebsite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 4

    .line 811
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketWebsite(Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 815
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 816
    throw p1
.end method

.method public getBucketWebsite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 5

    .line 832
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketWebsite(Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 836
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 837
    throw p1
.end method

.method public getBucketWebsiteConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 801
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->getBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 805
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 806
    throw p1
.end method

.method public getBucketWebsiteConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 822
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient;->getBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 826
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 827
    throw p1
.end method

.method public headBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->headBucket(Ljava/lang/String;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 208
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 209
    throw p1
.end method

.method public headBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 214
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->headBucket(Ljava/lang/String;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 218
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 219
    throw p1
.end method

.method public listBuckets(Lcom/obs/services/model/ListBucketsRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/ListBucketsRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation

    .line 166
    const-string v0, ""

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_5
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->listBuckets(Lcom/obs/services/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 170
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_d
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 171
    throw p1
.end method

.method public listBuckets(Lcom/obs/services/model/ListBucketsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/ListBucketsRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation

    .line 176
    const-string v0, ""

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :try_start_5
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->listBuckets(Lcom/obs/services/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 180
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_d
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 181
    throw p1
.end method

.method public listBuckets(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation

    .line 147
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 149
    :try_start_6
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->listBuckets(Lcom/obs/services/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 151
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_e
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 152
    throw p1
.end method

.method public listBuckets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation

    .line 156
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 158
    :try_start_6
    invoke-super {p0, p1}, Lcom/obs/services/AbstractBucketClient;->listBuckets(Lcom/obs/services/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 160
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_e
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 161
    throw p1
.end method

.method public optionsBucket(Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/OptionsInfoResult;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->optionsBucket(Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/OptionsInfoResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 448
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 449
    throw p1
.end method

.method public optionsBucket(Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/OptionsInfoResult;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->optionsBucket(Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/OptionsInfoResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 459
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 460
    throw p1
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 286
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketAcl(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 290
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 291
    throw p1
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 296
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketAcl(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 300
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 301
    throw p1
.end method

.method public setBucketAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    invoke-virtual {p0, p1, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 269
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 270
    throw p1
.end method

.method public setBucketAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 280
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 281
    throw p1
.end method

.method public setBucketCors(Ljava/lang/String;Lcom/obs/services/model/BucketCors;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 385
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketCors(Ljava/lang/String;Lcom/obs/services/model/BucketCors;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 389
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 390
    throw p1
.end method

.method public setBucketCors(Ljava/lang/String;Lcom/obs/services/model/BucketCors;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 395
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketCors(Ljava/lang/String;Lcom/obs/services/model/BucketCors;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 399
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 400
    throw p1
.end method

.method public setBucketLifecycle(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 667
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketLifecycle(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 671
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 672
    throw p1
.end method

.method public setBucketLifecycle(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 688
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketLifecycle(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 692
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 693
    throw p1
.end method

.method public setBucketLifecycleConfiguration(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 657
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketLifecycleConfiguration(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 661
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 662
    throw p1
.end method

.method public setBucketLifecycleConfiguration(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 678
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketLifecycleConfiguration(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 682
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 683
    throw p1
.end method

.method public setBucketLogging(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 518
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketLogging(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 522
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 523
    throw p1
.end method

.method public setBucketLogging(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 540
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketLogging(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 544
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 545
    throw p1
.end method

.method public setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 512
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 513
    throw p1
.end method

.method public setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 534
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 535
    throw p1
.end method

.method public setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;ZLjava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    invoke-virtual {p0, p1, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractBucketClient;->setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Z)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 556
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 557
    throw p1
.end method

.method public setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractBucketClient;->setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Z)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 568
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 569
    throw p1
.end method

.method public setBucketNotification(Ljava/lang/String;Lcom/obs/services/model/BucketNotificationConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 1133
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketNotification(Ljava/lang/String;Lcom/obs/services/model/BucketNotificationConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1137
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1138
    throw p1
.end method

.method public setBucketNotification(Ljava/lang/String;Lcom/obs/services/model/BucketNotificationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 1144
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketNotification(Ljava/lang/String;Lcom/obs/services/model/BucketNotificationConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1148
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1149
    throw p1
.end method

.method public setBucketPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 760
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 764
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 765
    throw p1
.end method

.method public setBucketPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 770
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 774
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 775
    throw p1
.end method

.method public setBucketQuota(Ljava/lang/String;Lcom/obs/services/model/BucketQuota;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 365
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketQuota(Ljava/lang/String;Lcom/obs/services/model/BucketQuota;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 369
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 370
    throw p1
.end method

.method public setBucketQuota(Ljava/lang/String;Lcom/obs/services/model/BucketQuota;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 375
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketQuota(Ljava/lang/String;Lcom/obs/services/model/BucketQuota;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 379
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 380
    throw p1
.end method

.method public setBucketReplication(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 996
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketReplication(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1000
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1001
    throw p1
.end method

.method public setBucketReplication(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 1018
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketReplication(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1022
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1023
    throw p1
.end method

.method public setBucketReplicationConfiguration(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketReplicationConfiguration(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 990
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 991
    throw p1
.end method

.method public setBucketReplicationConfiguration(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1008
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketReplicationConfiguration(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1012
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1013
    throw p1
.end method

.method public setBucketStoragePolicy(Ljava/lang/String;Lcom/obs/services/model/BucketStoragePolicyConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 1155
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketStoragePolicy(Ljava/lang/String;Lcom/obs/services/model/BucketStoragePolicyConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1159
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1160
    throw p1
.end method

.method public setBucketStoragePolicy(Ljava/lang/String;Lcom/obs/services/model/BucketStoragePolicyConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 1166
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketStoragePolicy(Ljava/lang/String;Lcom/obs/services/model/BucketStoragePolicyConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 1170
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 1171
    throw p1
.end method

.method public setBucketTagging(Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 926
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketTagging(Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 930
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 931
    throw p1
.end method

.method public setBucketTagging(Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 936
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketTagging(Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 940
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 941
    throw p1
.end method

.method public setBucketVersioning(Ljava/lang/String;Lcom/obs/services/model/BucketVersioningConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 574
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketVersioning(Ljava/lang/String;Lcom/obs/services/model/BucketVersioningConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 578
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 579
    throw p1
.end method

.method public setBucketVersioning(Ljava/lang/String;Lcom/obs/services/model/BucketVersioningConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 584
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketClient;->setBucketVersioning(Ljava/lang/String;Lcom/obs/services/model/BucketVersioningConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 588
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 589
    throw p1
.end method

.method public setBucketWebsite(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 853
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketWebsite(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 857
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 858
    throw p1
.end method

.method public setBucketWebsite(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 874
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketWebsite(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 878
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 879
    throw p1
.end method

.method public setBucketWebsiteConfiguration(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 843
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketWebsiteConfiguration(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 847
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 848
    throw p1
.end method

.method public setBucketWebsiteConfiguration(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 864
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractDeprecatedBucketClient;->setBucketWebsiteConfiguration(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 868
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 869
    throw p1
.end method

.method protected setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1203
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1196
    new-instance v0, Lcom/obs/services/internal/security/ProviderCredentials;

    invoke-direct {v0, p2, p3, p4}, Lcom/obs/services/internal/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p2

    invoke-virtual {p2}, Lcom/obs/services/internal/security/ProviderCredentials;->getIsAuthTypeNegotiation()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/obs/services/internal/security/ProviderCredentials;->setIsAuthTypeNegotiation(Z)V

    .line 1198
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/security/ProviderCredentials;->setAuthType(Lcom/obs/services/model/AuthTypeEnum;)V

    .line 1199
    invoke-static {}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->getInstance()Lcom/obs/services/internal/security/ProviderCredentialThreadContext;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->setProviderCredentials(Lcom/obs/services/internal/security/ProviderCredentials;)V

    return-void
.end method
