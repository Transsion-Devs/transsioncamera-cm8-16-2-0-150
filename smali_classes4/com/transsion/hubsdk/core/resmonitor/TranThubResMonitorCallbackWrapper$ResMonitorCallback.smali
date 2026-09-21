.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$ResMonitorCallback;
.super Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResMonitorCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6

    .line 50
    # getter for: Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;
    invoke-static {}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;

    .line 51
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 52
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;->onEvent(ILjava/lang/String;)V

    :cond_25
    return-void
.end method
