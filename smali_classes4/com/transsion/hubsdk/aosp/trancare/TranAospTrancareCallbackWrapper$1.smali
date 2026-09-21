.class Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;
.super Lcom/transsion/log/TranLogCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->regCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;->this$0:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;

    invoke-direct {p0}, Lcom/transsion/log/TranLogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTidChange()V
    .registers 4

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;->this$0:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;

    # getter for: Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->access$100(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;

    .line 46
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranLogCallback()Lcom/transsion/log/TranLogCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 47
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranTrancareCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;->onTidChange()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    :cond_27
    return-void

    :catch_28
    move-exception p0

    .line 52
    # getter for: Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trigger callback error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
