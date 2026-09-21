.class public Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;
.super Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloudEngineCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;->this$0:Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;

    invoke-direct {p0}, Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    .line 74
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;->this$0:Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;

    # getter for: Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->access$100(Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;

    .line 75
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getCloudEngineCallback()Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 76
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getTranCloudEngineCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;->onUpdate(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_27
    return-void
.end method
