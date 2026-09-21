.class public abstract Lcom/obs/services/internal/service/ObsBucketAdvanceService;
.super Lcom/obs/services/internal/service/ObsBucketBaseService;
.source "SourceFile"


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    const-class v0, Lcom/obs/services/internal/service/ObsBucketAdvanceService;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/obs/services/internal/service/ObsBucketBaseService;-><init>()V

    return-void
.end method

.method private createBucketWithClusterGroupId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 869
    new-instance v0, Lcom/obs/services/model/CreateBucketRequest;

    invoke-direct {v0}, Lcom/obs/services/model/CreateBucketRequest;-><init>()V

    .line 870
    invoke-virtual {v0, p2}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0, p1, p4}, Lcom/obs/services/model/GenericRequest;->addUserHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0, p3}, Lcom/obs/services/model/CreateBucketRequest;->setLocation(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/service/ObsBucketBaseService;->createBucketImpl(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;

    return-void
.end method


# virtual methods
.method protected bindBucketAliasImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 878
    const-string v0, "application/xml"

    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 879
    const-string v2, "Content-Type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 882
    sget-object v2, Lcom/obs/services/model/SpecialParamEnum;->OBSALIAS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v2}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    new-instance v2, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v2}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 884
    sget-object v3, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 885
    invoke-virtual {v2, v5}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 886
    invoke-virtual {v2, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 887
    const-string v3, "AliasList"

    invoke-static {v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    .line 888
    const-string v4, "Alias"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 889
    invoke-virtual {v3}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    const/4 p2, 0x0

    .line 890
    invoke-virtual {p0, v2, p2, p2}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 892
    invoke-virtual {p0, p1, p2, v1}, Lcom/obs/services/internal/RestStorageService;->renameMetadataKeys(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 895
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v6, p1

    .line 894
    invoke-virtual/range {v3 .. v8}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZ)Lokhttp3/Response;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception v0

    move-object p0, v0

    .line 897
    new-instance p1, Lcom/obs/services/exception/ObsException;

    const-string p2, "bind bucket alias "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method protected createBucketAliasImpl(Lcom/obs/services/model/CreateVirtualBucketRequest;)V
    .registers 12

    .line 904
    const-string v0, "Bucket"

    const-string v1, "application/xml"

    :try_start_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 905
    const-string v3, "Content-Type"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 908
    sget-object v3, Lcom/obs/services/model/SpecialParamEnum;->OBSBUCKETALIAS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v3}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    new-instance v3, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v3}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 910
    sget-object v4, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 911
    invoke-virtual {v3, v6}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 912
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 914
    const-string v4, "CreateBucketAlias"

    invoke-static {v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    .line 915
    const-string v5, "BucketList"

    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    .line 916
    invoke-virtual {v4, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 917
    invoke-virtual {v4, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 918
    invoke-virtual {v4}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    const/4 v0, 0x0

    .line 919
    invoke-virtual {p0, v3, v0, v0}, Lcom/obs/services/internal/RestConnectionService;->setupConnection(Lcom/obs/services/internal/trans/NewTransResult;ZZ)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 921
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/obs/services/internal/RestStorageService;->renameMetadataKeys(Ljava/lang/String;Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 924
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    .line 923
    invoke-virtual/range {v4 .. v9}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lokhttp3/Request;Ljava/util/Map;Ljava/lang/String;ZZ)Lokhttp3/Response;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception v0

    move-object p0, v0

    .line 926
    new-instance p1, Lcom/obs/services/exception/ObsException;

    const-string v0, "create bucket alias "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method protected createBucketWithClusterId(Lcom/obs/services/model/CreateVirtualBucketRequest;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/CreateVirtualBucketRequest;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 820
    const-string v0, "Bucket is existed when create "

    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v1

    sget-object v3, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v1, v3, :cond_13

    const-string v1, "x-amz-"

    goto :goto_15

    :cond_13
    const-string v1, "x-obs-location-clustergroup-id"

    .line 823
    :goto_15
    new-instance v3, Lcom/obs/services/model/BucketMetadataInfoRequest;

    invoke-direct {v3}, Lcom/obs/services/model/BucketMetadataInfoRequest;-><init>()V

    .line 824
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/model/BucketMetadataInfoRequest;->setBucketName(Ljava/lang/String;)V

    const/16 v4, 0x194

    .line 828
    :try_start_23
    invoke-virtual {p0, v3}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketMetadataImpl(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object v5

    .line 829
    invoke-virtual {v5}, Lcom/obs/services/model/HeaderResponse;->getOriginalHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_33
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_23 .. :try_end_33} :catch_34

    goto :goto_54

    :catch_34
    move-exception v5

    .line 831
    invoke-virtual {v5}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result v6

    if-ne v6, v4, :cond_11c

    .line 832
    sget-object v5, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->log:Lcom/obs/log/ILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    move-object v5, v2

    .line 839
    :goto_54
    :try_start_54
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/obs/services/model/BucketMetadataInfoRequest;->setBucketName(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0, v3}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketMetadataImpl(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object v3

    .line 841
    invoke-virtual {v3}, Lcom/obs/services/model/HeaderResponse;->getOriginalHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6b
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_54 .. :try_end_6b} :catch_6c

    goto :goto_8b

    :catch_6c
    move-exception v3

    .line 843
    invoke-virtual {v3}, Lcom/obs/services/internal/ServiceException;->getResponseCode()I

    move-result v6

    if-ne v6, v4, :cond_11b

    .line 844
    sget-object v3, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->log:Lcom/obs/log/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 851
    :goto_8b
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_bc

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 852
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 852
    invoke-direct {p0, v1, v0, v2, v4}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->createBucketWithClusterGroupId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getRegionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 854
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->createBucketWithClusterGroupId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_112

    .line 856
    :cond_bc
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 857
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getRegionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    :goto_d8
    check-cast p2, Ljava/lang/String;

    goto :goto_e0

    :cond_db
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_d8

    .line 857
    :goto_e0
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->createBucketWithClusterGroupId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_112

    .line 859
    :cond_e4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 860
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v0

    .line 861
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getRegionId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    :goto_100
    check-cast p2, Ljava/lang/String;

    goto :goto_108

    :cond_103
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_100

    .line 860
    :goto_108
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->createBucketWithClusterGroupId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_112

    .line 862
    :cond_10c
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_113

    :goto_112
    return-void

    .line 863
    :cond_113
    new-instance p0, Lcom/obs/services/exception/ObsException;

    const-string p1, "the two bucket is in same az"

    invoke-direct {p0, p1}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 846
    :cond_11b
    throw v3

    .line 834
    :cond_11c
    throw v5
.end method

.method protected createVirtualBucketImpl(Lcom/obs/services/model/CreateVirtualBucketRequest;)Lcom/obs/services/model/CreateVirtualBucketResult;
    .registers 5

    .line 747
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getRegionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->listAvailableZoneInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 749
    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->createBucketWithClusterId(Lcom/obs/services/model/CreateVirtualBucketRequest;Ljava/util/List;)V

    .line 751
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->createBucketAliasImpl(Lcom/obs/services/model/CreateVirtualBucketRequest;)V

    .line 753
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->bindBucketAliasImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->bindBucketAliasImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getAgencyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setVirtualReplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getAgencyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setVirtualReplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance p0, Lcom/obs/services/model/CreateVirtualBucketResult;

    invoke-direct {p0}, Lcom/obs/services/model/CreateVirtualBucketResult;-><init>()V

    .line 760
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/CreateVirtualBucketResult;->setBucketName1(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/CreateVirtualBucketResult;->setBucketName2(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/CreateVirtualBucketResult;->setVirtualBucketName(Ljava/lang/String;)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create virtual bucket success, virtualBucketName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bucketName1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bucketName2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 763
    invoke-virtual {p0, p1}, Lcom/obs/services/model/CreateVirtualBucketResult;->setMessage(Ljava/lang/String;)V

    .line 765
    sget-object p1, Lcom/obs/services/model/http/HttpStatusCode;->HTTP_OK:Lcom/obs/services/model/http/HttpStatusCode;

    invoke-virtual {p1}, Lcom/obs/services/model/http/HttpStatusCode;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/InternalHeaderResponse;->setStatusCode(I)V

    return-object p0
.end method

.method protected deleteBucketCorsImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 482
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 483
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->CORS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 487
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 485
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 488
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteBucketCustomDomainImpl(Lcom/obs/services/model/DeleteBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 736
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 737
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->CUSTOMDOMAIN:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/DeleteBucketCustomDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 740
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 741
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 739
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 742
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteBucketDirectColdAccessImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 695
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 696
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->DIRECTCOLDACCESS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 699
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 697
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 701
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteBucketEncryptionImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 367
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 368
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->ENCRYPTION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 371
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 369
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 372
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteBucketLifecycleConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 277
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 278
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->LIFECYCLE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 281
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 279
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 282
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteBucketReplicationConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 436
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 437
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->REPLICATION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 440
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 438
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 441
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteBucketTaggingImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 321
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 322
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->TAGGING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 325
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 323
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 326
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected deleteBucketWebsiteConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 231
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 232
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->WEBSITE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 235
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 236
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected getBucketAclImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/AccessControlList;
    .registers 8

    .line 555
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 556
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->ACL:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 560
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 558
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 562
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 564
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;

    .line 565
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->getAccessControlList()Lcom/obs/services/model/AccessControlList;

    move-result-object p1

    .line 566
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketCorsImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;
    .registers 8

    .line 467
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 468
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->CORS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 471
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 469
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 473
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 474
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;

    .line 475
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->getConfiguration()Lcom/obs/services/model/BucketCors;

    move-result-object p1

    .line 476
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketCustomDomainImpl(Lcom/obs/services/model/GetBucketCustomDomainRequest;)Lcom/obs/services/model/BucketCustomDomainInfo;
    .registers 8

    .line 706
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 707
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->CUSTOMDOMAIN:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 711
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 709
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 713
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 715
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;

    .line 716
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCustomDomainHandler;->getBucketTagInfo()Lcom/obs/services/model/BucketCustomDomainInfo;

    move-result-object p1

    .line 717
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketDirectColdAccessImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketDirectColdAccess;
    .registers 8

    .line 680
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 681
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->DIRECTCOLDACCESS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 684
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 682
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 686
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 688
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketDirectColdAccessHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketDirectColdAccessHandler;

    .line 689
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketDirectColdAccessHandler;->getBucketDirectColdAccess()Lcom/obs/services/model/BucketDirectColdAccess;

    move-result-object p1

    .line 690
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketEncryptionImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketEncryption;
    .registers 8

    .line 350
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 351
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->ENCRYPTION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 355
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 353
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 357
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 359
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;

    .line 360
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketEncryptionHandler;->getEncryption()Lcom/obs/services/model/BucketEncryption;

    move-result-object p1

    .line 362
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketLifecycleConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 8

    .line 261
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 262
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->LIFECYCLE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 266
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 264
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 268
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 270
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;

    .line 271
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->getLifecycleConfig()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object p1

    .line 272
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketLoggingConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 8

    .line 643
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 644
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->LOGGING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 648
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 650
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 652
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;

    .line 653
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->getBucketLoggingStatus()Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object p1

    .line 655
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketNotificationConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 8

    .line 176
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 177
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->NOTIFICATION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 180
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 182
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 184
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;

    const/4 v3, 0x0

    .line 185
    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;

    .line 187
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->getBucketNotificationConfiguration()Lcom/obs/services/model/BucketNotificationConfiguration;

    move-result-object p1

    .line 188
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketQuotaImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketQuota;
    .registers 8

    .line 512
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 513
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->QUOTA:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 517
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 515
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 519
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 521
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketQuotaHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketQuotaHandler;

    .line 522
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketQuotaHandler;->getQuota()Lcom/obs/services/model/BucketQuota;

    move-result-object p1

    .line 523
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketReplicationConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 8

    .line 398
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 399
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->REPLICATION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 402
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 400
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 404
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 406
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;

    const/4 v3, 0x0

    .line 407
    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;

    .line 409
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->getReplicationConfiguration()Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object p1

    .line 411
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketRequestPaymentImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/RequestPaymentConfiguration;
    .registers 8

    .line 139
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 140
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->REQUEST_PAYMENT:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 144
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 146
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 148
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;

    .line 149
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$RequestPaymentHandler;->getRequestPaymentConfiguration()Lcom/obs/services/model/RequestPaymentConfiguration;

    move-result-object p1

    .line 150
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketTaggingImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketTagInfo;
    .registers 8

    .line 306
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 307
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->TAGGING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 310
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 308
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 312
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 314
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;

    .line 315
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;->getBucketTagInfo()Lcom/obs/services/model/BucketTagInfo;

    move-result-object p1

    .line 316
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getBucketWebsiteConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 8

    .line 214
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 215
    sget-object v0, Lcom/obs/services/model/SpecialParamEnum;->WEBSITE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v0}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v4

    .line 219
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 217
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 221
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 223
    invoke-virtual {v0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v1, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v1, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;

    .line 224
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->getWebsiteConfig()Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object p1

    .line 226
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getCrrProgressImpl(Lcom/obs/services/model/crr/GetCrrProgressRequest;)Lcom/obs/services/model/crr/GetCrrProgressResult;
    .registers 11

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 417
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->REPLICATION_PROGRESS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->RULE_ID:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/crr/GetCrrProgressRequest;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v4, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v4}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 420
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v4, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 421
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v4, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    .line 423
    invoke-virtual/range {v3 .. v8}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 425
    invoke-virtual {v3, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 426
    invoke-virtual {v3}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;

    const/4 v2, 0x0

    .line 427
    invoke-virtual {p1, v0, v1, v2}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;

    .line 429
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$GetCrrProgressResultHandler;->getReplicationConfiguration()Lcom/obs/services/model/crr/GetCrrProgressResult;

    move-result-object p1

    .line 430
    invoke-virtual {v3, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected listAliasBucketsImpl()Lcom/obs/services/model/ListBucketAliasResult;
    .registers 6

    .line 800
    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 801
    sget-object v2, Lcom/obs/services/model/SpecialParamEnum;->OBSBUCKETALIAS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v2}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 803
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 804
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/obs/services/internal/RestStorageService;->performRestGetForListBuckets(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object v0

    .line 805
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 807
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v1

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, v0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;

    .line 811
    new-instance v2, Lcom/obs/services/model/ListBucketAliasResult;

    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->getListBucketAlias()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->getBucketAliasOwner()Lcom/obs/services/model/Owner;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/obs/services/model/ListBucketAliasResult;-><init>(Ljava/util/List;Lcom/obs/services/model/Owner;)V

    .line 812
    invoke-virtual {p0, v2, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_47

    return-object v2

    :catch_47
    move-exception p0

    .line 815
    new-instance v0, Lcom/obs/services/exception/ObsException;

    const-string v1, "get alias buckets  failed "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method protected listAvailableZoneInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    const-string v1, "regionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 773
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    new-instance v4, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v4}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 775
    invoke-virtual {v4, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 776
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v4, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 777
    invoke-virtual {v4, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 778
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 779
    const-string v0, "X-Auth-Token"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-virtual {v4, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setUserHeaders(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 781
    invoke-virtual {v4, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setEncodeUrl(Z)V

    .line 782
    sget-object p2, Lcom/oef/services/model/RequestParamEnum;->SERVICES_CLUSTERS:Lcom/oef/services/model/RequestParamEnum;

    invoke-virtual {p2}, Lcom/oef/services/model/RequestParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    .line 783
    invoke-virtual/range {v3 .. v8}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 784
    invoke-virtual {v3, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentTypeForJson(Lokhttp3/Response;)V

    .line 786
    invoke-static {p0}, Lcom/obs/services/internal/utils/RestUtils;->readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/JSONChange;->readNodeFromJson(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    const-string p2, "infos"

    .line 787
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    const-string p2, "id"

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 788
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_88

    .line 791
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 792
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 793
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 789
    :cond_88
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string p1, "az info is not 2az."

    invoke-direct {p0, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setBucketAclImpl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 529
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->ACL:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketAclRequest;->getCannedACL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 532
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketAclRequest;->getCannedACL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/obs/services/internal/IConvertor;->transCannedAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/obs/services/model/SetBucketAclRequest;->setAcl(Lcom/obs/services/model/AccessControlList;)V

    .line 534
    :cond_31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 535
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketAclRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v5

    invoke-virtual {p0, v3, v1, v5}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 538
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketAclRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    if-nez v3, :cond_52

    goto :goto_63

    .line 539
    :cond_52
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketAclRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Lcom/obs/services/internal/IConvertor;->transAccessControlList(Lcom/obs/services/model/AccessControlList;Z)Ljava/lang/String;

    move-result-object v2

    .line 540
    :goto_63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Content-Length"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x0

    .line 545
    :goto_7f
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 546
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 547
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 548
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 549
    invoke-virtual {p1, v2}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 550
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 551
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketCorsImpl(Lcom/obs/services/model/SetBucketCorsRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 445
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketCorsRequest;->getBucketCors()Lcom/obs/services/model/BucketCors;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_a

    move-object v0, v1

    goto :goto_1a

    .line 446
    :cond_a
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketCorsRequest;->getBucketCors()Lcom/obs/services/model/BucketCors;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/obs/services/internal/IConvertor;->transBucketCors(Lcom/obs/services/model/BucketCors;)Ljava/lang/String;

    move-result-object v0

    .line 448
    :goto_1a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 449
    sget-object v3, Lcom/obs/services/model/SpecialParamEnum;->CORS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v3}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 452
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v3, "Content-MD5"

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Content-Length"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 458
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 459
    invoke-virtual {p1, v2}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 460
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 461
    invoke-virtual {p0, v4, v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 463
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketCustomDomainImpl(Lcom/obs/services/model/SetBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 723
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->CUSTOMDOMAIN:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketCustomDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    const/4 v2, 0x0

    .line 724
    invoke-virtual {p0, p1, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v1

    .line 727
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 728
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 729
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 730
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 731
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketDirectColdAccessImpl(Lcom/obs/services/model/SetBucketDirectColdAccessRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 7

    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 662
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->DIRECTCOLDACCESS:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 665
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketDirectColdAccessRequest;->getAccess()Lcom/obs/services/model/BucketDirectColdAccess;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transBucketDirectColdAccess(Lcom/obs/services/model/BucketDirectColdAccess;)Ljava/lang/String;

    move-result-object v2

    .line 667
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 671
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 672
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 673
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 674
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 675
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 676
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketEncryptionImpl(Lcom/obs/services/model/SetBucketEncryptionRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->ENCRYPTION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 333
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketEncryptionRequest;->getBucketEncryption()Lcom/obs/services/model/BucketEncryption;

    move-result-object v5

    if-nez v5, :cond_23

    goto :goto_33

    .line 336
    :cond_23
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketEncryptionRequest;->getBucketEncryption()Lcom/obs/services/model/BucketEncryption;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/obs/services/internal/IConvertor;->transBucketEcryption(Lcom/obs/services/model/BucketEncryption;)Ljava/lang/String;

    move-result-object v2

    .line 337
    :goto_33
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v5

    invoke-virtual {p0, p1, v1, v5}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 339
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 342
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 343
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 344
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 346
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketLifecycleConfigurationImpl(Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 7

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->LIFECYCLE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 245
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    .line 246
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLifecycleRequest;->getLifecycleConfig()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transLifecycleConfiguration(Lcom/obs/services/model/LifecycleConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 247
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 251
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 252
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 253
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 254
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketLoggingConfigurationImpl(Lcom/obs/services/model/SetBucketLoggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 11

    .line 572
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLoggingRequest;->getLoggingConfiguration()Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/BucketLoggingConfiguration;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLoggingRequest;->isUpdateTargetACLifRequired()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 573
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/obs/services/model/AuthTypeEnum;->OBS:Lcom/obs/services/model/AuthTypeEnum;

    if-eq v0, v1, :cond_10c

    .line 578
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    .line 579
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLoggingRequest;->getLoggingConfiguration()Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 581
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketAclImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/AccessControlList;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Lcom/obs/services/model/AccessControlList;->getGrantAndPermissions()[Lcom/obs/services/model/GrantAndPermission;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_40
    if-ge v3, v2, :cond_89

    aget-object v6, v1, v3

    .line 584
    invoke-virtual {v6}, Lcom/obs/services/model/GrantAndPermission;->getGrantee()Lcom/obs/services/model/GranteeInterface;

    move-result-object v7

    instance-of v7, v7, Lcom/obs/services/model/GroupGrantee;

    if-eqz v7, :cond_86

    .line 585
    invoke-virtual {v6}, Lcom/obs/services/model/GrantAndPermission;->getGrantee()Lcom/obs/services/model/GranteeInterface;

    move-result-object v7

    check-cast v7, Lcom/obs/services/model/GroupGrantee;

    .line 586
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v8

    .line 587
    invoke-virtual {v7}, Lcom/obs/services/model/GroupGrantee;->getGroupGranteeType()Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/obs/services/internal/IConvertor;->transGroupGrantee(Lcom/obs/services/model/GroupGranteeEnum;)Ljava/lang/String;

    move-result-object v7

    .line 586
    const-string v8, "http://acs.amazonaws.com/groups/s3/LogDelivery"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 588
    sget-object v7, Lcom/obs/services/model/Permission;->PERMISSION_WRITE:Lcom/obs/services/model/Permission;

    invoke-virtual {v6}, Lcom/obs/services/model/GrantAndPermission;->getPermission()Lcom/obs/services/model/Permission;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/obs/services/model/Permission;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_79

    move v4, v8

    goto :goto_86

    .line 590
    :cond_79
    sget-object v7, Lcom/obs/services/model/Permission;->PERMISSION_READ_ACP:Lcom/obs/services/model/Permission;

    invoke-virtual {v6}, Lcom/obs/services/model/GrantAndPermission;->getPermission()Lcom/obs/services/model/Permission;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/obs/services/model/Permission;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    move v5, v8

    :cond_86
    :goto_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 597
    :cond_89
    const-string v1, "Target logging bucket \'"

    if-eqz v4, :cond_b8

    if-nez v5, :cond_90

    goto :goto_b8

    .line 612
    :cond_90
    sget-object v0, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLoggingRequest;->getLoggingConfiguration()Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has the necessary ACL settings"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_10c

    .line 598
    :cond_b8
    :goto_b8
    sget-object v2, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLoggingRequest;->getLoggingConfiguration()Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' does not have the necessary ACL settings, updating ACL now"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 602
    :cond_df
    invoke-virtual {v0}, Lcom/obs/services/model/AccessControlList;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object v1

    if-eqz v1, :cond_ed

    .line 603
    invoke-virtual {v0}, Lcom/obs/services/model/AccessControlList;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/obs/services/model/Owner;->setDisplayName(Ljava/lang/String;)V

    .line 605
    :cond_ed
    sget-object v1, Lcom/obs/services/model/GroupGrantee;->LOG_DELIVERY:Lcom/obs/services/model/GroupGrantee;

    sget-object v2, Lcom/obs/services/model/Permission;->PERMISSION_WRITE:Lcom/obs/services/model/Permission;

    invoke-virtual {v0, v1, v2}, Lcom/obs/services/model/AccessControlList;->grantPermission(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;)Lcom/obs/services/model/GrantAndPermission;

    .line 606
    sget-object v2, Lcom/obs/services/model/Permission;->PERMISSION_READ_ACP:Lcom/obs/services/model/Permission;

    invoke-virtual {v0, v1, v2}, Lcom/obs/services/model/AccessControlList;->grantPermission(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;)Lcom/obs/services/model/GrantAndPermission;

    .line 608
    new-instance v1, Lcom/obs/services/model/SetBucketAclRequest;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/obs/services/model/SetBucketAclRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)V

    .line 609
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 610
    invoke-virtual {p0, v1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketAclImpl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;

    .line 619
    :cond_10c
    :goto_10c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 620
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->LOGGING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 624
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 626
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLoggingRequest;->getLoggingConfiguration()Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object v3

    if-nez v3, :cond_133

    goto :goto_143

    .line 627
    :cond_133
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    .line 628
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLoggingRequest;->getLoggingConfiguration()Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transBucketLoggingConfiguration(Lcom/obs/services/model/BucketLoggingConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 629
    :goto_143
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 633
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 634
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 635
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 636
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 637
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketNotificationImpl(Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->NOTIFICATION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 160
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    .line 161
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketNotificationRequest;->getBucketNotificationConfiguration()Lcom/obs/services/model/BucketNotificationConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transBucketNotificationConfiguration(Lcom/obs/services/model/BucketNotificationConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 163
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 167
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 168
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketQuotaImpl(Lcom/obs/services/model/SetBucketQuotaRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 493
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->QUOTA:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 495
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketQuotaRequest;->getBucketQuota()Lcom/obs/services/model/BucketQuota;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_33

    .line 498
    :cond_23
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketQuotaRequest;->getBucketQuota()Lcom/obs/services/model/BucketQuota;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transBucketQuota(Lcom/obs/services/model/BucketQuota;)Ljava/lang/String;

    move-result-object v2

    .line 499
    :goto_33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Content-Length"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 503
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 504
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 505
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 506
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 508
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketReplicationConfigurationImpl(Lcom/obs/services/model/SetBucketReplicationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 7

    .line 377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 378
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->REPLICATION:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 381
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    .line 382
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketReplicationRequest;->getReplicationConfiguration()Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transReplicationConfiguration(Lcom/obs/services/model/ReplicationConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 384
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 388
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 389
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 390
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 391
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 393
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketRequestPaymentImpl(Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->REQUEST_PAYMENT:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 123
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    .line 124
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketRequestPaymentRequest;->getPayer()Lcom/obs/services/model/RequestPaymentEnum;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketRequestPaymentRequest;->getPayer()Lcom/obs/services/model/RequestPaymentEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/model/RequestPaymentEnum;->getCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    .line 124
    :goto_3c
    invoke-interface {v2, v3, v4}, Lcom/obs/services/internal/IConvertor;->transRequestPaymentConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 130
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 131
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 132
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketTaggingImpl(Lcom/obs/services/model/SetBucketTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 7

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 287
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->TAGGING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 290
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketTaggingRequest;->getBucketTagInfo()Lcom/obs/services/model/BucketTagInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transBucketTagInfo(Lcom/obs/services/model/BucketTagInfo;)Ljava/lang/String;

    move-result-object v2

    .line 292
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 297
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 298
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 299
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 300
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketVersioningImpl(Lcom/obs/services/model/SetBucketVersioningRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->VERSIONING:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 103
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketVersioningRequest;->getStatus()Lcom/obs/services/model/VersioningStatusEnum;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketVersioningRequest;->getStatus()Lcom/obs/services/model/VersioningStatusEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/obs/services/model/VersioningStatusEnum;->getCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    .line 103
    :goto_3c
    invoke-interface {v2, v3, v4}, Lcom/obs/services/internal/IConvertor;->transVersioningConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 110
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 111
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setBucketWebsiteConfigurationImpl(Lcom/obs/services/model/SetBucketWebsiteRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->WEBSITE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    .line 200
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->getIConvertor(Ljava/lang/String;)Lcom/obs/services/internal/IConvertor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketWebsiteRequest;->getWebsiteConfig()Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/obs/services/internal/IConvertor;->transWebsiteConfiguration(Lcom/obs/services/model/WebsiteConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string v3, "Content-Type"

    const-string v4, "application/xml"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "Content-MD5"

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequest(Lcom/obs/services/model/GenericRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 206
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 207
    invoke-virtual {p0, v4, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->build(Lokhttp3/Response;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected setVirtualReplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 931
    new-instance v0, Lcom/obs/services/model/ReplicationConfiguration;

    invoke-direct {v0}, Lcom/obs/services/model/ReplicationConfiguration;-><init>()V

    .line 932
    new-instance v1, Lcom/obs/services/model/ReplicationConfiguration$Rule;

    invoke-direct {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;-><init>()V

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_to_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setId(Ljava/lang/String;)V

    .line 934
    sget-object v2, Lcom/obs/services/model/RuleStatusEnum;->ENABLED:Lcom/obs/services/model/RuleStatusEnum;

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setStatus(Lcom/obs/services/model/RuleStatusEnum;)V

    .line 935
    sget-object v2, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->ENABLED:Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    invoke-virtual {v1, v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setHistoricalObjectReplication(Lcom/obs/services/model/HistoricalObjectReplicationEnum;)V

    .line 936
    new-instance v2, Lcom/obs/services/model/ReplicationConfiguration$Destination;

    invoke-direct {v2}, Lcom/obs/services/model/ReplicationConfiguration$Destination;-><init>()V

    .line 937
    invoke-virtual {v2, p3}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->setBucket(Ljava/lang/String;)V

    .line 938
    sget-object p3, Lcom/obs/services/model/StorageClassEnum;->STANDARD:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v2, p3}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->setObjectStorageClass(Lcom/obs/services/model/StorageClassEnum;)V

    .line 939
    invoke-virtual {v1, v2}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->setDestination(Lcom/obs/services/model/ReplicationConfiguration$Destination;)V

    .line 940
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 941
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    invoke-virtual {v0, p3}, Lcom/obs/services/model/ReplicationConfiguration;->setRules(Ljava/util/List;)V

    .line 943
    invoke-virtual {v0, p1}, Lcom/obs/services/model/ReplicationConfiguration;->setAgency(Ljava/lang/String;)V

    .line 944
    new-instance p1, Lcom/obs/services/model/SetBucketReplicationRequest;

    invoke-direct {p1, p2, v0}, Lcom/obs/services/model/SetBucketReplicationRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)V

    .line 945
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketReplicationConfigurationImpl(Lcom/obs/services/model/SetBucketReplicationRequest;)Lcom/obs/services/model/HeaderResponse;

    return-void
.end method
