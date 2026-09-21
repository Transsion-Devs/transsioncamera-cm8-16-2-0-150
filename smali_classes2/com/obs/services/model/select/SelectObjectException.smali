.class public Lcom/obs/services/model/select/SelectObjectException;
.super Lcom/obs/services/exception/ObsException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0, p2}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/obs/services/exception/ObsException;->setErrorCode(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/obs/services/exception/ObsException;->setErrorMessage(Ljava/lang/String;)V

    .line 36
    const-string p1, "error"

    invoke-virtual {p0, p1}, Lcom/obs/services/exception/ObsException;->setResponseStatus(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .registers 1

    .line 46
    invoke-super {p0}, Lcom/obs/services/exception/ObsException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 1

    .line 56
    invoke-super {p0}, Lcom/obs/services/exception/ObsException;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectObjectException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ErrorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/select/SelectObjectException;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
