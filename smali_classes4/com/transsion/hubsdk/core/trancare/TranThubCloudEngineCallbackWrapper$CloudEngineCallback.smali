.class public Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CloudEngineCallback;
.super Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloudEngineCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CloudEngineCallback;->this$0:Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;

    invoke-direct {p0}, Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CloudEngineCallback;->this$0:Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;

    # getter for: Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->access$100(Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;

    .line 64
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 65
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;->onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    :cond_27
    return-void

    .line 70
    :catch_28
    # getter for: Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "api call back error!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
