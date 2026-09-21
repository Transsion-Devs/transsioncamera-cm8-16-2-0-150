.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyPartResultHandler"
.end annotation


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 1650
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    return-void
.end method


# virtual methods
.method public endETag(Ljava/lang/String;)V
    .registers 2

    .line 1667
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;->etag:Ljava/lang/String;

    return-void
.end method

.method public endLastModified(Ljava/lang/String;)V
    .registers 3

    .line 1660
    :try_start_0
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;->lastModified:Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 1662
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    const-string v0, "date parse failed."

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getCopyPartResult(I)Lcom/obs/services/model/CopyPartResult;
    .registers 4

    .line 1654
    new-instance v0, Lcom/obs/services/model/CopyPartResult;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;->etag:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyPartResultHandler;->lastModified:Ljava/util/Date;

    invoke-direct {v0, p1, v1, p0}, Lcom/obs/services/model/CopyPartResult;-><init>(ILjava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method
