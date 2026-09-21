.class public Lcom/ss/android/ttve/nativePort/TEMessageClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field protected mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

.field protected mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TEMessageClient;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 11
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TEMessageClient;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-void
.end method


# virtual methods
.method public getErrorListener()Lcom/ss/android/ttve/common/TECommonCallback;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEMessageClient;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-object p0
.end method

.method public getInfoListener()Lcom/ss/android/ttve/common/TECommonCallback;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEMessageClient;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-object p0
.end method

.method public nativeCallback_onErrorListener(IIFLjava/lang/String;)V
    .registers 5

    .line 40
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEMessageClient;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    if-eqz p0, :cond_7

    .line 41
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/common/TECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onInfoListener(IIF)V
    .registers 5

    .line 46
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEMessageClient;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 47
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/ss/android/ttve/common/TECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEMessageClient;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-void
.end method

.method public setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEMessageClient;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-void
.end method
