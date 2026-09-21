.class public interface abstract Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;,
        Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;
    }
.end annotation


# virtual methods
.method public abstract cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V
.end method

.method public abstract freeService()V
.end method

.method public abstract request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
.end method
