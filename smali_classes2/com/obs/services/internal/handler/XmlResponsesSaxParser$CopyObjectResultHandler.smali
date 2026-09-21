.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyObjectResultHandler"
.end annotation


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 982
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 997
    const-string v0, "LastModified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 999
    :try_start_8
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;->lastModified:Ljava/util/Date;
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 1001
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1002
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-ISO8601 date for LastModified in copy object output: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 1005
    :cond_33
    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1006
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;->etag:Ljava/lang/String;

    :cond_3d
    :goto_3d
    return-void
.end method

.method public getETag()Ljava/lang/String;
    .registers 1

    .line 992
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 1

    .line 988
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$CopyObjectResultHandler;->lastModified:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
