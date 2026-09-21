.class public abstract Lcom/ss/ugc/effectplatform/model/NetResponseChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkStatusCode()Z
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;->getStatusCode()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public checkValue()Z
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;->getResponseData()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getResponseData()Ljava/lang/Object;
.end method

.method public abstract getResponseMessage()Ljava/lang/String;
.end method

.method public abstract getStatusCode()I
.end method

.method public verifySign()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
