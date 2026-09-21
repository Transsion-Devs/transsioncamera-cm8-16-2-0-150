.class public abstract Lcom/obs/services/internal/service/ObsFileService;
.super Lcom/obs/services/internal/service/ObsObjectService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;
    }
.end annotation


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const-class v0, Lcom/obs/services/internal/service/ObsFileService;

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/service/ObsFileService;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/obs/services/internal/service/ObsObjectService;-><init>()V

    return-void
.end method


# virtual methods
.method protected deleteAccessLabelFsImpl(Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelResult;
    .registers 6

    .line 279
    new-instance v0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 280
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 281
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->DELETE:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x-obs-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/obs/services/model/SpecialParamEnum;->ACCESSLABEL:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v3}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 284
    invoke-virtual {v0, v2}, Lcom/obs/services/internal/trans/NewTransResult;->setEncodeUrl(Z)V

    .line 285
    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 286
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 287
    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 288
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;->getDir()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 290
    new-instance v0, Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelResult;

    invoke-direct {v0}, Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelResult;-><init>()V

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected getAccessLabelFsImpl(Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;
    .registers 8

    .line 254
    new-instance v1, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v1}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 255
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 256
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x-obs-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/obs/services/model/SpecialParamEnum;->ACCESSLABEL:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v3}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {v1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 260
    invoke-virtual {v1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setEncodeUrl(Z)V

    .line 261
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;->getDir()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 262
    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;ZZZZ)Lokhttp3/Response;

    move-result-object p0

    .line 264
    invoke-virtual {v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentTypeForJson(Lokhttp3/Response;)V

    .line 265
    invoke-static {p0}, Lcom/obs/services/internal/utils/RestUtils;->readBodyFromResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-static {p1}, Lcom/obs/services/internal/utils/JSONChange;->readNodeFromJson(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v1, "accesslabel"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 269
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 271
    :cond_77
    new-instance p1, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;

    invoke-direct {p1}, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;-><init>()V

    .line 272
    invoke-virtual {p1, v1}, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;->setRoleLabel(Ljava/util/List;)V

    .line 273
    invoke-virtual {v0, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected getContentSummaryFsImpl(Lcom/obs/services/model/fs/ContentSummaryFsRequest;)Lcom/obs/services/model/fs/ContentSummaryFsResult;
    .registers 9

    .line 197
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transGetContentSummaryFs(Lcom/obs/services/model/fs/ContentSummaryFsRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ContentSummaryFsRequest;->getDirName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    :goto_15
    move-object v3, v1

    goto :goto_1c

    :cond_17
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ContentSummaryFsRequest;->getDirName()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    .line 201
    :goto_1c
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v6

    move-object v1, p0

    .line 199
    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 203
    invoke-virtual {v1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 205
    invoke-virtual {v1}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;

    .line 209
    new-instance v0, Lcom/obs/services/model/fs/ContentSummaryFsResult;

    invoke-direct {v0}, Lcom/obs/services/model/fs/ContentSummaryFsResult;-><init>()V

    .line 210
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ContentSummaryFsHandler;->getContentSummary()Lcom/obs/services/model/fs/DirSummary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/fs/ContentSummaryFsResult;->setContentSummary(Lcom/obs/services/model/fs/DirSummary;)V

    .line 212
    invoke-virtual {v1, v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected listContentSummaryFsImpl(Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/model/fs/ListContentSummaryFsResult;
    .registers 9

    .line 175
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transListContentSummaryFsRequest(Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p0

    .line 177
    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 180
    invoke-virtual {v1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 182
    invoke-virtual {v1}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object p1

    new-instance v0, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v0, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v2, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;

    .line 186
    new-instance v0, Lcom/obs/services/model/fs/ListContentSummaryFsResult;

    invoke-direct {v0}, Lcom/obs/services/model/fs/ListContentSummaryFsResult;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->getDirContentSummaries()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/obs/services/model/fs/ListContentSummaryFsResult;->setDirContentSummaries(Ljava/util/List;)V

    .line 188
    invoke-virtual {p1}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryFsHandler;->getErrorResults()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/fs/ListContentSummaryFsResult;->setErrorResults(Ljava/util/List;)V

    .line 190
    invoke-virtual {v1, v0, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected listContentSummaryImpl(Lcom/obs/services/model/fs/ListContentSummaryRequest;)Lcom/obs/services/model/fs/ListContentSummaryResult;
    .registers 9

    .line 140
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transListContentSummaryRequest(Lcom/obs/services/model/fs/ListContentSummaryRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v0}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getParams()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p0

    .line 142
    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p0

    .line 145
    invoke-virtual {v1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->verifyResponseContentType(Lokhttp3/Response;)V

    .line 147
    invoke-virtual {v1}, Lcom/obs/services/internal/RestStorageService;->getXmlResponseSaxParser()Lcom/obs/services/internal/handler/XmlResponsesSaxParser;

    move-result-object v0

    new-instance v2, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;

    invoke-direct {v2, p0}, Lcom/obs/services/internal/io/HttpMethodReleaseInputStream;-><init>(Lokhttp3/Response;)V

    const-class v3, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;

    .line 151
    new-instance v2, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    invoke-direct {v2}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;-><init>()V

    .line 152
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getFolderContentSummaries()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->folderContentSummaries(Ljava/util/List;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object v2

    .line 153
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    .line 154
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    goto :goto_48

    :cond_44
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 153
    :goto_48
    invoke-virtual {v2, v3}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->bucketName(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object v2

    .line 155
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->isListingTruncated()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->truncated(Z)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object v2

    .line 156
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getRequestPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5f

    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getPrefix()Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    .line 157
    :cond_5f
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getRequestPrefix()Ljava/lang/String;

    move-result-object v3

    .line 156
    :goto_63
    invoke-virtual {v2, v3}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->prefix(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object v2

    .line 158
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getRequestMarker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_72

    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getMarker()Ljava/lang/String;

    move-result-object v3

    goto :goto_76

    .line 159
    :cond_72
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getRequestMarker()Ljava/lang/String;

    move-result-object v3

    .line 158
    :goto_76
    invoke-virtual {v2, v3}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->marker(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getRequestMaxKeys()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->maxKeys(I)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object v2

    .line 161
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getRequestDelimiter()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8d

    .line 162
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v3

    goto :goto_91

    :cond_8d
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getRequestDelimiter()Ljava/lang/String;

    move-result-object v3

    .line 161
    :goto_91
    invoke-virtual {v2, v3}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->delimiter(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object v2

    .line 163
    invoke-virtual {v0}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListContentSummaryHandler;->getMarkerForNextListing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->nextMarker(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/services/internal/IHeaders;->bucketRegionHeader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {v0, p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->location(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->builder()Lcom/obs/services/model/fs/ListContentSummaryResult;

    move-result-object p1

    .line 168
    invoke-virtual {v1, p1, p0}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object p1
.end method

.method protected renameFileImpl(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;
    .registers 5

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->RENAME:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/obs/services/model/fs/RenameRequest;->getNewObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0, p1, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v1

    .line 88
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 90
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/obs/services/model/fs/RenameResult;

    invoke-direct {v0}, Lcom/obs/services/model/fs/RenameResult;-><init>()V

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected setAccessLabelFsImpl(Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;
    .registers 6

    .line 218
    new-instance v0, Lcom/obs/services/internal/trans/NewTransResult;

    invoke-direct {v0}, Lcom/obs/services/internal/trans/NewTransResult;-><init>()V

    .line 219
    sget-object v1, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHttpMethod(Lcom/obs/services/model/HttpMethodEnum;)V

    .line 220
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setBucketName(Ljava/lang/String;)V

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x-obs-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/obs/services/model/SpecialParamEnum;->ACCESSLABEL:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v3}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 224
    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setEncodeUrl(Z)V

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 228
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->getDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setObjectKey(Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;-><init>(Lcom/obs/services/internal/service/ObsFileService;Lcom/obs/services/internal/service/ObsFileService$1;)V

    .line 230
    invoke-virtual {p1}, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->getRoleLabel()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/obs/services/internal/service/ObsFileService$SetAccessLabelJson;->setAccesslabel(Ljava/util/List;)V

    .line 231
    invoke-static {v1}, Lcom/obs/services/internal/utils/JSONChange;->objToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->createRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/trans/NewTransResult;->setBody(Lokhttp3/RequestBody;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 234
    new-instance v0, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;

    invoke-direct {v0}, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;-><init>()V

    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected truncateFileImpl(Lcom/obs/services/model/fs/TruncateFileRequest;)Lcom/obs/services/model/fs/TruncateFileResult;
    .registers 5

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    sget-object v1, Lcom/obs/services/model/SpecialParamEnum;->TRUNCATE:Lcom/obs/services/model/SpecialParamEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SpecialParamEnum;->getOriginalStringCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Lcom/obs/services/model/fs/TruncateFileRequest;->getNewLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0, p1, v2, v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transRequestPaymentHeaders(Lcom/obs/services/model/GenericRequest;Ljava/util/Map;Lcom/obs/services/internal/IHeaders;)Ljava/util/Map;

    move-result-object v1

    .line 71
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequest(Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object p1

    .line 72
    invoke-virtual {p1, v0}, Lcom/obs/services/internal/trans/NewTransResult;->setParams(Ljava/util/Map;)V

    .line 73
    invoke-virtual {p1, v1}, Lcom/obs/services/internal/trans/NewTransResult;->setHeaders(Ljava/util/Map;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/obs/services/model/fs/TruncateFileResult;

    invoke-direct {v0}, Lcom/obs/services/model/fs/TruncateFileResult;-><init>()V

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    return-object v0
.end method

.method protected writeFileImpl(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 14

    .line 102
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v3

    .line 104
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/RequestConvertor;->transWriteFileRequest(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_ad

    .line 106
    :try_start_8
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/obs/services/internal/service/AclHeaderConvertor;->prepareRESTHeaderAcl(Ljava/lang/String;Ljava/util/Map;Lcom/obs/services/model/AccessControlList;)Z

    move-result v0

    .line 107
    invoke-virtual {p0, v1, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->transObjectRequestWithResult(Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;Lcom/obs/services/model/BaseObjectRequest;)Lcom/obs/services/internal/trans/NewTransResult;

    move-result-object v2

    .line 108
    invoke-virtual {p0, v2}, Lcom/obs/services/internal/RestStorageService;->performRequest(Lcom/obs/services/internal/trans/NewTransResult;)Lokhttp3/Response;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_aa

    .line 110
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 111
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v4

    instance-of v4, v4, Ljava/io/Closeable;

    if-eqz v4, :cond_39

    .line 112
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 117
    :cond_39
    new-instance v4, Lcom/obs/services/model/fs/ObsFSFile;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v6

    const-string v1, "ETag"

    .line 118
    invoke-virtual {v2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->versionIdHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/RestStorageService;->getIHeaders(Ljava/lang/String;)Lcom/obs/services/internal/IHeaders;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Lcom/obs/services/internal/IHeaders;->storageClassHeader()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/model/StorageClassEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/StorageClassEnum;

    move-result-object v9

    .line 122
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getIsIgnorePort()Z

    move-result v11

    invoke-virtual {p0, v1, v10, v11}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/obs/services/model/fs/ObsFSFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;Ljava/lang/String;)V

    move-object v6, v4

    .line 124
    invoke-virtual {p0, v6, v2}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->setHeadersAndStatus(Lcom/obs/services/model/HeaderResponse;Lokhttp3/Response;)V

    if-nez v0, :cond_a9

    if-eqz v3, :cond_a9

    .line 127
    :try_start_88
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/obs/services/internal/service/AclHeaderConvertor;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Z)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_99} :catch_9a

    return-object v6

    :catch_9a
    move-exception v0

    move-object p0, v0

    .line 129
    sget-object p1, Lcom/obs/services/internal/service/ObsFileService;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 130
    const-string v0, "Try to set object acl error"

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a9
    return-object v6

    :catchall_aa
    move-exception v0

    move-object p0, v0

    goto :goto_b0

    :catchall_ad
    move-exception v0

    move-object p0, v0

    const/4 v1, 0x0

    :goto_b0
    if-eqz v1, :cond_cf

    .line 110
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_cf

    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectRequest;->isAutoClose()Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 111
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    instance-of p1, p1, Ljava/io/Closeable;

    if-eqz p1, :cond_cf

    .line 112
    invoke-virtual {v1}, Lcom/obs/services/internal/service/AbstractRequestConvertor$TransResult;->getBody()Lokhttp3/RequestBody;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 115
    :cond_cf
    throw p0
.end method
