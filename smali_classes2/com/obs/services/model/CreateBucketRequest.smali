.class public Lcom/obs/services/model/CreateBucketRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field private acl:Lcom/obs/services/model/AccessControlList;

.field private availableZone:Lcom/obs/services/model/AvailableZoneEnum;

.field private bucketRedundancy:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

.field private bucketType:Lcom/obs/services/model/BucketTypeEnum;

.field private epid:Ljava/lang/String;

.field private extensionHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extensionPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/obs/services/model/ExtensionBucketPermissionEnum;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fusionAllowAlternative:Lcom/obs/services/model/ActionEnum;

.field private fusionAllowUpgrade:Lcom/obs/services/model/ActionEnum;

.field private location:Ljava/lang/String;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;


# direct methods
.method public static synthetic $r8$lambda$ctFMyjN7wLkcN4MmcwaAS7tDzG4(Lcom/obs/services/model/ExtensionBucketPermissionEnum;)Ljava/util/Set;
    .registers 1

    .line 97
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 33
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 50
    sget-object v0, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 52
    sget-object v0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->CLASSIC:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketRedundancy:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    .line 54
    sget-object v0, Lcom/obs/services/model/ActionEnum;->DEFAULT:Lcom/obs/services/model/ActionEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowUpgrade:Lcom/obs/services/model/ActionEnum;

    .line 56
    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowAlternative:Lcom/obs/services/model/ActionEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 33
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 50
    sget-object v0, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 52
    sget-object v0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->CLASSIC:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketRedundancy:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    .line 54
    sget-object v0, Lcom/obs/services/model/ActionEnum;->DEFAULT:Lcom/obs/services/model/ActionEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowUpgrade:Lcom/obs/services/model/ActionEnum;

    .line 56
    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowAlternative:Lcom/obs/services/model/ActionEnum;

    .line 69
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    .line 33
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 50
    sget-object v0, Lcom/obs/services/model/BucketTypeEnum;->OBJECT:Lcom/obs/services/model/BucketTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    .line 52
    sget-object v0, Lcom/obs/services/model/fusion/RedundancyTypeEnum;->CLASSIC:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketRedundancy:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    .line 54
    sget-object v0, Lcom/obs/services/model/ActionEnum;->DEFAULT:Lcom/obs/services/model/ActionEnum;

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowUpgrade:Lcom/obs/services/model/ActionEnum;

    .line 56
    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowAlternative:Lcom/obs/services/model/ActionEnum;

    .line 81
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/obs/services/model/CreateBucketRequest;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAcl()Lcom/obs/services/model/AccessControlList;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public getAllGrantPermissions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/obs/services/model/ExtensionBucketPermissionEnum;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/obs/services/model/CreateBucketRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableZone()Lcom/obs/services/model/AvailableZoneEnum;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    return-object p0
.end method

.method public getBucketRedundancy()Lcom/obs/services/model/fusion/RedundancyTypeEnum;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketRedundancy:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    return-object p0
.end method

.method public getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getBucketType()Lcom/obs/services/model/BucketTypeEnum;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-object p0
.end method

.method public getDomainIdsByGrantPermission(Lcom/obs/services/model/ExtensionBucketPermissionEnum;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/ExtensionBucketPermissionEnum;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/obs/services/model/CreateBucketRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_11

    .line 143
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :cond_11
    return-object p0
.end method

.method public getEpid()Ljava/lang/String;
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->epid:Ljava/lang/String;

    return-object p0
.end method

.method public getExtensionHeaderMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->extensionHeaderMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->extensionHeaderMap:Ljava/util/Map;

    .line 263
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->extensionHeaderMap:Ljava/util/Map;

    return-object p0
.end method

.method getExtensionPermissionMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/obs/services/model/ExtensionBucketPermissionEnum;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->extensionPermissionMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/CreateBucketRequest;->extensionPermissionMap:Ljava/util/Map;

    .line 256
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->extensionPermissionMap:Ljava/util/Map;

    return-object p0
.end method

.method public getFusionAllowAlternative()Lcom/obs/services/model/ActionEnum;
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowAlternative:Lcom/obs/services/model/ActionEnum;

    return-object p0
.end method

.method public getFusionAllowUpgrade()Lcom/obs/services/model/ActionEnum;
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowUpgrade:Lcom/obs/services/model/ActionEnum;

    return-object p0
.end method

.method public getGrantPermissionsByDomainId(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/obs/services/model/ExtensionBucketPermissionEnum;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 150
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 151
    invoke-virtual {p0}, Lcom/obs/services/model/CreateBucketRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    .line 152
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_3b
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->location:Ljava/lang/String;

    return-object p0
.end method

.method public grantExtensionPermission(Ljava/lang/String;Lcom/obs/services/model/ExtensionBucketPermissionEnum;)V
    .registers 4

    if-eqz p2, :cond_1f

    .line 94
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1f

    .line 97
    :cond_9
    invoke-virtual {p0}, Lcom/obs/services/model/CreateBucketRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/obs/services/model/CreateBucketRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/obs/services/model/CreateBucketRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setAcl(Lcom/obs/services/model/AccessControlList;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-void
.end method

.method public setAvailableZone(Lcom/obs/services/model/AvailableZoneEnum;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    return-void
.end method

.method public setBucketRedundancy(Lcom/obs/services/model/fusion/RedundancyTypeEnum;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketRedundancy:Lcom/obs/services/model/fusion/RedundancyTypeEnum;

    return-void
.end method

.method public setBucketStorageClass(Lcom/obs/services/model/StorageClassEnum;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method

.method public setBucketType(Lcom/obs/services/model/BucketTypeEnum;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->bucketType:Lcom/obs/services/model/BucketTypeEnum;

    return-void
.end method

.method public setEpid(Ljava/lang/String;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->epid:Ljava/lang/String;

    return-void
.end method

.method public setFusionAllowAlternative(Lcom/obs/services/model/ActionEnum;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowAlternative:Lcom/obs/services/model/ActionEnum;

    return-void
.end method

.method public setFusionAllowUpgrade(Lcom/obs/services/model/ActionEnum;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->fusionAllowUpgrade:Lcom/obs/services/model/ActionEnum;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/obs/services/model/CreateBucketRequest;->location:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateBucketRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CreateBucketRequest;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CreateBucketRequest;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CreateBucketRequest;->acl:Lcom/obs/services/model/AccessControlList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extensionPermissionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CreateBucketRequest;->extensionPermissionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availableZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CreateBucketRequest;->availableZone:Lcom/obs/services/model/AvailableZoneEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",epid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/CreateBucketRequest;->epid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withdrawExtensionPermission(Ljava/lang/String;Lcom/obs/services/model/ExtensionBucketPermissionEnum;)V
    .registers 4

    if-eqz p2, :cond_1c

    .line 110
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 113
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/obs/services/model/CreateBucketRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1c

    .line 116
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public withdrawExtensionPermissions(Ljava/lang/String;)V
    .registers 3

    .line 127
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Lcom/obs/services/model/CreateBucketRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 129
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2c
    return-void
.end method
