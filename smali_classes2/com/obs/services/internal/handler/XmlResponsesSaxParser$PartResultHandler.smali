.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartResultHandler"
.end annotation


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private partNumber:I

.field private size:J


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 1682
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    return-void
.end method


# virtual methods
.method public endETag(Ljava/lang/String;)V
    .registers 2

    .line 1702
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->etag:Ljava/lang/String;

    return-void
.end method

.method public endLastModified(Ljava/lang/String;)V
    .registers 3

    .line 1695
    :try_start_0
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->lastModified:Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 1697
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    const-string v0, "date parse failed."

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public endPart(Ljava/lang/String;)V
    .registers 2

    .line 1710
    invoke-virtual {p0}, Lcom/obs/services/internal/handler/SimpleHandler;->returnControlToParentHandler()V

    return-void
.end method

.method public endPartNumber(Ljava/lang/String;)V
    .registers 2

    .line 1690
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->partNumber:I

    return-void
.end method

.method public endSize(Ljava/lang/String;)V
    .registers 4

    .line 1706
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->size:J

    return-void
.end method

.method public getMultipartPart()Lcom/obs/services/model/Multipart;
    .registers 7

    .line 1686
    new-instance v0, Lcom/obs/services/model/Multipart;

    iget v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->partNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->lastModified:Ljava/util/Date;

    iget-object v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->etag:Ljava/lang/String;

    iget-wide v4, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$PartResultHandler;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/obs/services/model/Multipart;-><init>(Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
