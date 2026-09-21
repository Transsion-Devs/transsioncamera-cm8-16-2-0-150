.class public abstract Lcom/obs/services/model/PutObjectBasicRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field protected acl:Lcom/obs/services/model/AccessControlList;

.field protected extensionPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected sseCHeader:Lcom/obs/services/model/SseCHeader;

.field protected sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

.field protected successRedirectLocation:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$XL94dO2DhNZF3-UcAT54myhG1cY(Lcom/obs/services/model/ExtensionObjectPermissionEnum;)Ljava/util/Set;
    .registers 1

    .line 136
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 44
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAcl()Lcom/obs/services/model/AccessControlList;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public getAllGrantPermissions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getDomainIdsByGrantPermission(Lcom/obs/services/model/ExtensionObjectPermissionEnum;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_11

    .line 183
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :cond_11
    return-object p0
.end method

.method public getExtensionPermissionMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->extensionPermissionMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->extensionPermissionMap:Ljava/util/Map;

    .line 206
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->extensionPermissionMap:Ljava/util/Map;

    return-object p0
.end method

.method public getGrantPermissionsByDomainId(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 190
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    .line 193
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 192
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3b
    return-object v0
.end method

.method public getSseCHeader()Lcom/obs/services/model/SseCHeader;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public getSseKmsHeader()Lcom/obs/services/model/SseKmsHeader;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

    return-object p0
.end method

.method public getSuccessRedirectLocation()Ljava/lang/String;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/obs/services/model/PutObjectBasicRequest;->successRedirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public grantExtensionPermission(Ljava/lang/String;Lcom/obs/services/model/ExtensionObjectPermissionEnum;)V
    .registers 4

    if-eqz p2, :cond_1f

    .line 133
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1f

    .line 136
    :cond_9
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/obs/services/model/PutObjectBasicRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/obs/services/model/PutObjectBasicRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setAcl(Lcom/obs/services/model/AccessControlList;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->acl:Lcom/obs/services/model/AccessControlList;

    return-void
.end method

.method public setExtensionPermissionMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/obs/services/model/ExtensionObjectPermissionEnum;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 213
    :cond_3
    iput-object p1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->extensionPermissionMap:Ljava/util/Map;

    return-void
.end method

.method public setSseCHeader(Lcom/obs/services/model/SseCHeader;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public setSseKmsHeader(Lcom/obs/services/model/SseKmsHeader;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->sseKmsHeader:Lcom/obs/services/model/SseKmsHeader;

    return-void
.end method

.method public setSuccessRedirectLocation(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/obs/services/model/PutObjectBasicRequest;->successRedirectLocation:Ljava/lang/String;

    return-void
.end method

.method public withdrawExtensionPermission(Ljava/lang/String;Lcom/obs/services/model/ExtensionObjectPermissionEnum;)V
    .registers 4

    if-eqz p2, :cond_1c

    .line 149
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 152
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1c

    .line 155
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public withdrawExtensionPermissions(Ljava/lang/String;)V
    .registers 5

    .line 166
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 167
    invoke-virtual {p0}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object p0

    .line 168
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 167
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_38
    return-void
.end method
