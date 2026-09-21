.class public interface abstract Lcom/obs/services/internal/IConvertor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract transAccessControlList(Lcom/obs/services/model/AccessControlList;Z)Ljava/lang/String;
.end method

.method public abstract transBucketCors(Lcom/obs/services/model/BucketCors;)Ljava/lang/String;
.end method

.method public abstract transBucketDirectColdAccess(Lcom/obs/services/model/BucketDirectColdAccess;)Ljava/lang/String;
.end method

.method public abstract transBucketEcryption(Lcom/obs/services/model/BucketEncryption;)Ljava/lang/String;
.end method

.method public abstract transBucketFileInterface(Lcom/obs/services/model/fs/FSStatusEnum;)Ljava/lang/String;
.end method

.method public abstract transBucketInventoryConfiguration(Lcom/obs/services/model/inventory/InventoryConfiguration;)Ljava/lang/String;
.end method

.method public abstract transBucketLoction(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract transBucketLoggingConfiguration(Lcom/obs/services/model/BucketLoggingConfiguration;)Ljava/lang/String;
.end method

.method public abstract transBucketNotificationConfiguration(Lcom/obs/services/model/BucketNotificationConfiguration;)Ljava/lang/String;
.end method

.method public abstract transBucketQuota(Lcom/obs/services/model/BucketQuota;)Ljava/lang/String;
.end method

.method public abstract transBucketTagInfo(Lcom/obs/services/model/BucketTagInfo;)Ljava/lang/String;
.end method

.method public abstract transCannedAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
.end method

.method public abstract transCompleteMultipartUpload(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/PartEtag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract transEventType(Lcom/obs/services/model/EventTypeEnum;)Ljava/lang/String;
.end method

.method public abstract transGroupGrantee(Lcom/obs/services/model/GroupGranteeEnum;)Ljava/lang/String;
.end method

.method public abstract transKeyAndVersion([Lcom/obs/services/model/KeyAndVersion;ZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract transLifecycleConfiguration(Lcom/obs/services/model/LifecycleConfiguration;)Ljava/lang/String;
.end method

.method public abstract transObjectTagInfo(Lcom/obs/services/model/ObjectTagResult;)Ljava/lang/String;
.end method

.method public abstract transReplicationConfiguration(Lcom/obs/services/model/ReplicationConfiguration;)Ljava/lang/String;
.end method

.method public abstract transRequestPaymentConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract transRestoreObjectRequest(Lcom/obs/services/model/RestoreObjectRequest;)Ljava/lang/String;
.end method

.method public abstract transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;
.end method

.method public abstract transStoragePolicy(Lcom/obs/services/model/BucketStoragePolicyConfiguration;)Ljava/lang/String;
.end method

.method public abstract transVersioningConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract transWebsiteConfiguration(Lcom/obs/services/model/WebsiteConfiguration;)Ljava/lang/String;
.end method
