.class public Lcom/obs/services/exception/ObsException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorHostId:Ljava/lang/String;

.field private errorIndicator:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorRequestId:Ljava/lang/String;

.field private responseCode:I

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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->xmlMessage:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorCode:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorMessage:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorRequestId:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorHostId:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->responseHeaders:Ljava/util/Map;

    const/4 p3, -0x1

    .line 40
    iput p3, p0, Lcom/obs/services/exception/ObsException;->responseCode:I

    .line 42
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->responseStatus:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorIndicator:Ljava/lang/String;

    if-eqz p2, :cond_1c

    .line 61
    invoke-direct {p0, p2}, Lcom/obs/services/exception/ObsException;->parseXmlMessage(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0, p2}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 85
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

    .line 86
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_38

    .line 88
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private isParsedFromXmlMessage()Z
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->xmlMessage:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private parseXmlMessage(Ljava/lang/String;)V
    .registers 4

    .line 95
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->xmlMessage:Ljava/lang/String;

    .line 98
    const-string v0, "Code"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/exception/ObsException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/exception/ObsException;->errorCode:Ljava/lang/String;

    .line 99
    const-string v0, "Message"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/exception/ObsException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/exception/ObsException;->errorMessage:Ljava/lang/String;

    .line 100
    const-string v0, "RequestId"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/exception/ObsException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/exception/ObsException;->errorRequestId:Ljava/lang/String;

    .line 101
    const-string v0, "HostId"

    invoke-direct {p0, p1, v0}, Lcom/obs/services/exception/ObsException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorHostId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorHostId()Ljava/lang/String;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->errorHostId:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorIndicator()Ljava/lang/String;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->errorIndicator:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorRequestId()Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->errorRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseCode()I
    .registers 1

    .line 184
    iget p0, p0, Lcom/obs/services/exception/ObsException;->responseCode:I

    return p0
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

    .line 171
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->responseHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getResponseStatus()Ljava/lang/String;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->responseStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getXmlMessage()Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->xmlMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorHostId(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorHostId:Ljava/lang/String;

    return-void
.end method

.method public setErrorIndicator(Ljava/lang/String;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorIndicator:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorRequestId(Ljava/lang/String;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->errorRequestId:Ljava/lang/String;

    return-void
.end method

.method public setResponseCode(I)V
    .registers 2

    .line 188
    iput p1, p0, Lcom/obs/services/exception/ObsException;->responseCode:I

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

    .line 175
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public setResponseStatus(Ljava/lang/String;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->responseStatus:Ljava/lang/String;

    return-void
.end method

.method public setXmlMessage(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/obs/services/exception/ObsException;->xmlMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 67
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/obs/services/exception/ObsException;->responseCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- ResponseCode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/obs/services/exception/ObsException;->responseCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ResponseStatus: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/obs/services/exception/ObsException;->responseStatus:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_29
    invoke-direct {p0}, Lcom/obs/services/exception/ObsException;->isParsedFromXmlMessage()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", XML Error Message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->xmlMessage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_46
    iget-object v1, p0, Lcom/obs/services/exception/ObsException;->errorRequestId:Ljava/lang/String;

    if-eqz v1, :cond_6b

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", RequestId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/obs/services/exception/ObsException;->errorRequestId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", HostId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/exception/ObsException;->errorHostId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6b
    return-object v0
.end method
