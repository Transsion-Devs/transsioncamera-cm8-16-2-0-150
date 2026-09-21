.class public Lcom/obs/services/model/Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private callbackBody:Ljava/lang/String;

.field private callbackBodyType:Ljava/lang/String;

.field private callbackHost:Ljava/lang/String;

.field private callbackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackBody()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/obs/services/model/Callback;->callbackBody:Ljava/lang/String;

    return-object p0
.end method

.method public getCallbackBodyType()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/obs/services/model/Callback;->callbackBodyType:Ljava/lang/String;

    return-object p0
.end method

.method public getCallbackHost()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/obs/services/model/Callback;->callbackHost:Ljava/lang/String;

    return-object p0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/obs/services/model/Callback;->callbackUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCallbackBody(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/obs/services/model/Callback;->callbackBody:Ljava/lang/String;

    return-void
.end method

.method public setCallbackBodyType(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/obs/services/model/Callback;->callbackBodyType:Ljava/lang/String;

    return-void
.end method

.method public setCallbackHost(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/obs/services/model/Callback;->callbackHost:Ljava/lang/String;

    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/obs/services/model/Callback;->callbackUrl:Ljava/lang/String;

    return-void
.end method
