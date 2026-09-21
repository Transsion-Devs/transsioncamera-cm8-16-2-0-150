.class public final Lcom/ss/ugc/effectplatform/model/ExceptionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errorCode:I

.field private exception:Ljava/lang/Exception;

.field private msg:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private selectedHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 40
    sget-object v0, Lcom/ss/ugc/effectplatform/ErrorConstants;->INSTANCE:Lcom/ss/ugc/effectplatform/ErrorConstants;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/ErrorConstants;->APIErrorHandle(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/ss/ugc/effectplatform/model/ExceptionResult;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 54
    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->requestUrl:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->selectedHost:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->remoteIp:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->exception:Ljava/lang/Exception;

    .line 58
    instance-of p2, p1, Lcom/ss/ugc/effectplatform/exception/NetException;

    if-eqz p2, :cond_22

    .line 59
    move-object p2, p1

    check-cast p2, Lcom/ss/ugc/effectplatform/exception/NetException;

    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/exception/NetException;->getStatus_code()I

    move-result p2

    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void

    .line 61
    :cond_22
    instance-of p2, p1, Lcom/ss/ugc/effectplatform/exception/StatusCodeException;

    if-eqz p2, :cond_36

    .line 62
    move-object p2, p1

    check-cast p2, Lcom/ss/ugc/effectplatform/exception/StatusCodeException;

    invoke-virtual {p2}, Lcom/ss/ugc/effectplatform/exception/StatusCodeException;->getStatusCode()I

    move-result p2

    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void

    .line 64
    :cond_36
    instance-of p2, p1, Lcom/ss/ugc/effectplatform/exception/JsonException;

    if-eqz p2, :cond_45

    const/16 p2, 0x2718

    .line 65
    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void

    .line 67
    :cond_45
    instance-of p2, p1, Lcom/ss/ugc/effectplatform/exception/UrlNotExistException;

    if-eqz p2, :cond_54

    const/16 p2, 0x271f

    .line 68
    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void

    .line 70
    :cond_54
    instance-of p2, p1, Lcom/ss/ugc/effectplatform/exception/UnzipException;

    if-eqz p2, :cond_63

    const/16 p2, 0x271d

    .line 71
    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void

    .line 73
    :cond_63
    instance-of p2, p1, Lcom/ss/ugc/effectplatform/exception/MD5Exception;

    if-eqz p2, :cond_72

    const/16 p2, 0x271a

    .line 74
    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void

    .line 76
    :cond_72
    instance-of p2, p1, Lbytekn/foundation/io/file/IOException;

    if-eqz p2, :cond_81

    const/16 p2, 0x271c

    .line 77
    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void

    :cond_81
    if-eqz p1, :cond_ad

    .line 80
    const-string p2, "network unavailable"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_92

    const/16 p2, 0x271b

    goto :goto_94

    :cond_92
    const/16 p2, 0x2715

    :goto_94
    iput p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    if-eqz p2, :cond_a6

    .line 86
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_a5

    goto :goto_a6

    :cond_a5
    return-void

    .line 87
    :cond_a6
    :goto_a6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void

    :cond_ad
    const/4 p1, 0x1

    .line 90
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    .line 91
    sget-object p2, Lcom/ss/ugc/effectplatform/ErrorConstants;->INSTANCE:Lcom/ss/ugc/effectplatform/ErrorConstants;

    invoke-virtual {p2, p1}, Lcom/ss/ugc/effectplatform/ErrorConstants;->APIErrorHandle(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 1

    .line 17
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    return p0
.end method

.method public final getException()Ljava/lang/Exception;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public final getMsg()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 96
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->exception:Ljava/lang/Exception;

    const/16 v1, 0x7d

    const-string v2, ", remoteIp=\'"

    const-string v3, ", selectedHost=\'"

    const-string v4, ", requestUrl=\'"

    const-string v5, ", msg=\'"

    const-string v6, "ExceptionResult{errorCode="

    const/16 v7, 0x27

    if-eqz v0, :cond_66

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v6, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->selectedHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->remoteIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->exception:Ljava/lang/Exception;

    if-nez p0, :cond_57

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_57
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v6, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->errorCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->selectedHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ExceptionResult;->remoteIp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
