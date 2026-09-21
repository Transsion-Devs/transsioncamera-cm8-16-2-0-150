.class Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;
.super Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->regTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;->this$0:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;

    invoke-direct {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTidChange()V
    .registers 4

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;->this$0:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;

    # getter for: Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->access$100(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;

    .line 41
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 42
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;->onTidChange()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    :cond_27
    return-void

    .line 47
    :catch_28
    # getter for: Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string v0, "api call back error!!!"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
