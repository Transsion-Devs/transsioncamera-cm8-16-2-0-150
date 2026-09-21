.class public interface abstract Lcom/transsion/camera/featurelibs/download/IRequestResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract onError(Lcom/transsion/camera/featurelibs/download/Request;IILjava/lang/String;)V
.end method

.method public abstract onProgress(Lcom/transsion/camera/featurelibs/download/Request;JJ)V
.end method

.method public abstract onSuccess(Lcom/transsion/camera/featurelibs/download/Request;[B)V
.end method
