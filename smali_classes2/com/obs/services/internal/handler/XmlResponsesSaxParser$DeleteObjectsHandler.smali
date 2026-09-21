.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteObjectsHandler"
.end annotation


# instance fields
.field private deleteMarkerVersion:Ljava/lang/String;

.field private final deletedObjectResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;",
            ">;"
        }
    .end annotation
.end field

.field private encodingType:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private final errorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private needDecode:Z

.field private result:Lcom/obs/services/model/DeleteObjectsResult;

.field private version:Ljava/lang/String;

.field private withDeleteMarker:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2014
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 2018
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObjectResults:Ljava/util/List;

    .line 2021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->errorResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 2058
    const-string v0, "Key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2059
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->key:Ljava/lang/String;

    return-void

    .line 2060
    :cond_b
    const-string v0, "VersionId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2061
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->version:Ljava/lang/String;

    return-void

    .line 2062
    :cond_16
    const-string v0, "DeleteMarker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2063
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->withDeleteMarker:Z

    return-void

    .line 2064
    :cond_25
    const-string v0, "DeleteMarkerVersionId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2065
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->deleteMarkerVersion:Ljava/lang/String;

    return-void

    .line 2066
    :cond_30
    const-string v0, "Code"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2067
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->errorCode:Ljava/lang/String;

    return-void

    .line 2068
    :cond_3b
    const-string v0, "Message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2069
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->message:Ljava/lang/String;

    return-void

    .line 2070
    :cond_46
    const-string v0, "Deleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    .line 2071
    new-instance p1, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->version:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->withDeleteMarker:Z

    iget-object v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->deleteMarkerVersion:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v2, v3}, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2074
    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObjectResults:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2075
    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->deleteMarkerVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->version:Ljava/lang/String;

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->key:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2076
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->withDeleteMarker:Z

    return-void

    .line 2077
    :cond_6b
    const-string v0, "Error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 2078
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->errorResults:Ljava/util/List;

    new-instance p2, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->version:Ljava/lang/String;

    iget-object v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->errorCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->message:Ljava/lang/String;

    invoke-direct {p2, v0, v2, v3, v4}, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->message:Ljava/lang/String;

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->errorCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->version:Ljava/lang/String;

    iput-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->key:Ljava/lang/String;

    return-void

    .line 2080
    :cond_8e
    const-string v0, "DeleteResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2081
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->result:Lcom/obs/services/model/DeleteObjectsResult;

    invoke-virtual {p1}, Lcom/obs/services/model/DeleteObjectsResult;->getDeletedObjectResults()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObjectResults:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2082
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->result:Lcom/obs/services/model/DeleteObjectsResult;

    invoke-virtual {p1}, Lcom/obs/services/model/DeleteObjectsResult;->getErrorResults()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->errorResults:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 2083
    :cond_ad
    const-string v0, "EncodingType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 2084
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->encodingType:Ljava/lang/String;

    .line 2085
    const-string p1, "url"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    const/4 p1, 0x1

    .line 2086
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->needDecode:Z

    :cond_c2
    return-void
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 1

    .line 2092
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->encodingType:Ljava/lang/String;

    return-object p0
.end method

.method public getMultipleDeleteResult()Lcom/obs/services/model/DeleteObjectsResult;
    .registers 5

    .line 2040
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->result:Lcom/obs/services/model/DeleteObjectsResult;

    invoke-virtual {v0}, Lcom/obs/services/model/DeleteObjectsResult;->getDeletedObjectResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;

    .line 2041
    invoke-virtual {v1}, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->needDecode:Z

    invoke-static {v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->setObjectKey(Ljava/lang/String;)V

    goto :goto_a

    .line 2043
    :cond_24
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->result:Lcom/obs/services/model/DeleteObjectsResult;

    invoke-virtual {v0}, Lcom/obs/services/model/DeleteObjectsResult;->getErrorResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;

    .line 2044
    invoke-virtual {v1}, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->needDecode:Z

    invoke-static {v2, v3}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->getDecodedString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->setObjectKey(Ljava/lang/String;)V

    goto :goto_2e

    .line 2046
    :cond_48
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->result:Lcom/obs/services/model/DeleteObjectsResult;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 2051
    const-string v0, "DeleteResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2052
    new-instance p1, Lcom/obs/services/model/DeleteObjectsResult;

    invoke-direct {p1}, Lcom/obs/services/model/DeleteObjectsResult;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$DeleteObjectsHandler;->result:Lcom/obs/services/model/DeleteObjectsResult;

    :cond_f
    return-void
.end method
