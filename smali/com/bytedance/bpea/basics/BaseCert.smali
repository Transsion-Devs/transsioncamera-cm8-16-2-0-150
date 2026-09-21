.class public abstract Lcom/bytedance/bpea/basics/BaseCert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/bpea/basics/Cert;
.implements Ljava/io/Serializable;


# instance fields
.field private final certToken:Ljava/lang/String;

.field private final certType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bpea/basics/BaseCert;->certToken:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/bpea/basics/BaseCert;->certType:I

    return-void
.end method


# virtual methods
.method public certToken()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/bytedance/bpea/basics/BaseCert;->certToken:Ljava/lang/String;

    return-object p0
.end method

.method public certType()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/bytedance/bpea/basics/BaseCert;->certType:I

    return p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 4

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    :try_start_5
    const-string v1, "certToken"

    iget-object v2, p0, Lcom/bytedance/bpea/basics/BaseCert;->certToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v1, "certType"

    iget p0, p0, Lcom/bytedance/bpea/basics/BaseCert;->certType:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object v0

    :catchall_14
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/bpea/basics/BaseCert;->toJSON()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toJSON().toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public validate(Lcom/bytedance/bpea/basics/CertContext;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/bytedance/bpea/basics/BaseCert;->certToken:Ljava/lang/String;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_10

    return-void

    .line 36
    :cond_10
    new-instance p0, Lcom/bytedance/bpea/basics/BPEAException;

    const/4 p1, -0x1

    const-string v0, "certToken is empty"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/bpea/basics/BPEAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
