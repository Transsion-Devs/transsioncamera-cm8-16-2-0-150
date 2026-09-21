.class public Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
    }
.end annotation


# static fields
.field private static final ATHENA_CLASS_NAME:Ljava/lang/String; = "transsion.log.Athena"

.field private static final TAG:Ljava/lang/String; = "TranAospTrancareCallbackWrapper"


# instance fields
.field private final mWrapperCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;)Ljava/util/List;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public regCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 30
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;

    .line 31
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranTrancareCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 32
    sget-object p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->TAG:Ljava/lang/String;

    const-string p1, "this callback has resgistered, return!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_2c
    new-instance v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;)V

    .line 39
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->setTranTrancareCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    .line 41
    new-instance p1, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;-><init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->setTranLogCallback(Lcom/transsion/log/TranLogCallback;)V

    .line 58
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :try_start_42
    const-string p0, "transsion.log.Athena"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 62
    const-string v0, "regTranLogCallback"

    const-class v2, Lcom/transsion/log/TranLogCallback;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 63
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception p0

    .line 65
    sget-object p1, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regCallback error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 6

    .line 70
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;

    .line 71
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranTrancareCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    :try_start_1c
    const-string p1, "transsion.log.Athena"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 74
    const-string v0, "unregTranLogCallback"

    const-class v2, Lcom/transsion/log/TranLogCallback;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 75
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranLogCallback()Lcom/transsion/log/TranLogCallback;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_3b

    goto :goto_56

    :catch_3b
    move-exception p1

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegCallback error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_56
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5b
    return-void
.end method
