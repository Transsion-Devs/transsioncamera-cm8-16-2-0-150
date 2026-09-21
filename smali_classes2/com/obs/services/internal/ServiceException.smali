.class public Lcom/obs/services/internal/ServiceException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0xa83a1571c10a625L


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorHostId:Ljava/lang/String;

.field private errorIndicator:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorRequestId:Ljava/lang/String;

.field private requestHost:Ljava/lang/String;

.field private requestPath:Ljava/lang/String;

.field private requestVerb:Ljava/lang/String;

.field private responseCode:I

.field private responseDate:Ljava/lang/String;

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseStatus:Ljava/lang/String;

.field private xmlMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    .line 58
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 59
    invoke-direct {p0, p2}, Lcom/obs/services/internal/ServiceException;->parseXmlMessage(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    return-void
.end method

.method private findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ".*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">(.*)</"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">.*"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 107
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_38

    .line 109
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseXmlMessage(Ljava/lang/String;)V
    .registers 4

    .line 116
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->xmlMessage:Ljava/lang/String;

    .line 119
    const-string v0, "Code"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/internal/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/internal/ServiceException;->errorCode:Ljava/lang/String;

    .line 120
    const-string v0, "Message"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/internal/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/internal/ServiceException;->errorMessage:Ljava/lang/String;

    .line 121
    const-string v0, "RequestId"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/internal/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/internal/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 122
    const-string v0, "HostId"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/internal/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/internal/ServiceException;->errorHostId:Ljava/lang/String;

    .line 124
    const-string v0, "Details"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/internal/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_50

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/obs/services/internal/ServiceException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->errorMessage:Ljava/lang/String;

    :cond_50
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorHostId()Ljava/lang/String;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->errorHostId:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorIndicator()Ljava/lang/String;
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->errorIndicator:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorRequestId()Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->errorRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestHost()Ljava/lang/String;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->requestHost:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestPath()Ljava/lang/String;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->requestPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestVerb()Ljava/lang/String;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->requestVerb:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseCode()I
    .registers 1

    .line 182
    iget p0, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    return p0
.end method

.method public getResponseDate()Ljava/lang/String;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->responseDate:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->responseHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getResponseStatus()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->responseStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getXmlMessage()Ljava/lang/String;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->xmlMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getXmlMessageAsBuilder()Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/obs/services/internal/ServiceException;->xmlMessage:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_6
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->xmlMessage:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->parse(Lorg/xml/sax/InputSource;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method public isParsedFromXmlMessage()Z
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->xmlMessage:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorHostId(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->errorHostId:Ljava/lang/String;

    return-void
.end method

.method public setErrorIndicator(Ljava/lang/String;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->errorIndicator:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorRequestId(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->errorRequestId:Ljava/lang/String;

    return-void
.end method

.method public setRequestAndHostIds(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 230
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/obs/services/internal/ServiceException;->errorHostId:Ljava/lang/String;

    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->requestHost:Ljava/lang/String;

    return-void
.end method

.method public setRequestPath(Ljava/lang/String;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->requestPath:Ljava/lang/String;

    return-void
.end method

.method public setRequestVerb(Ljava/lang/String;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->requestVerb:Ljava/lang/String;

    return-void
.end method

.method public setResponseCode(I)V
    .registers 2

    .line 186
    iput p1, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    return-void
.end method

.method public setResponseDate(Ljava/lang/String;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->responseDate:Ljava/lang/String;

    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public setResponseStatus(Ljava/lang/String;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/obs/services/internal/ServiceException;->responseStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/obs/services/internal/ServiceException;->requestVerb:Ljava/lang/String;

    if-eqz v1, :cond_64

    .line 84
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/internal/ServiceException;->requestVerb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/internal/ServiceException;->requestPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/obs/services/internal/ServiceException;->requestHost:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " on Host \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/obs/services/internal/ServiceException;->requestHost:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :cond_43
    move-object v2, v3

    .line 86
    :goto_44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/obs/services/internal/ServiceException;->responseDate:Ljava/lang/String;

    if-eqz v2, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @ \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/obs/services/internal/ServiceException;->responseDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_64
    iget v1, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7d

    .line 91
    const-string v1, " -- ResponseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/internal/ServiceException;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ResponseStatus: "

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/internal/ServiceException;->responseStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_7d
    invoke-virtual {p0}, Lcom/obs/services/internal/ServiceException;->isParsedFromXmlMessage()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 95
    const-string v1, ", XML Error Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->xmlMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6

    .line 97
    :cond_8e
    iget-object v1, p0, Lcom/obs/services/internal/ServiceException;->errorRequestId:Ljava/lang/String;

    if-eqz v1, :cond_a6

    .line 98
    const-string v1, ", RequestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/internal/ServiceException;->errorRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", HostId: "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/internal/ServiceException;->errorHostId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_a6
    :goto_a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
