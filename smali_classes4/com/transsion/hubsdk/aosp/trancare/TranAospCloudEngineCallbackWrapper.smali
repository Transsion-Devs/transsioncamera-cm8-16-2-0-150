.class public Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;
    }
.end annotation


# static fields
.field private static final CLOUD_ENGINE_NAME:Ljava/lang/String; = "com.transsion.log.cloudengine.CloudEngine"

.field private static final TAG:Ljava/lang/String; = "TranAospCloudEngineCallbackWrapper"


# instance fields
.field private final mWrapperCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;",
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;)Ljava/util/List;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public regCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .registers 8

    .line 28
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 29
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;

    .line 30
    invoke-virtual {v2}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getTranCloudEngineCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 31
    sget-object p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->TAG:Ljava/lang/String;

    const-string p1, "this callback has resgistered, return!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_2e
    new-instance v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$1;)V

    .line 38
    invoke-virtual {v1, p3}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->setTranCloudEngineCallback(Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    .line 39
    new-instance p3, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;

    invoke-direct {p3, p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;-><init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;)V

    .line 40
    invoke-virtual {v1, p3}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->setCloudEngineCallback(Lcom/transsion/log/cloudengine/ICloudEngineCallback;)V

    .line 41
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :try_start_44
    const-string p0, "com.transsion.log.cloudengine.CloudEngine"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 45
    const-string v1, "regCloudEngineCallback"

    const-class v3, Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    filled-new-array {v0, v0, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 47
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5d} :catch_5e

    return-void

    :catch_5e
    move-exception p0

    .line 49
    sget-object p1, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "regCallback error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegCallback(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .registers 7

    .line 54
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;

    .line 55
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getTranCloudEngineCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 57
    :try_start_1c
    const-string p2, "com.transsion.log.cloudengine.CloudEngine"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 58
    const-string v0, "unregCloudEngineCallback"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 60
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getCloudEngineCallback()Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_3d

    goto :goto_58

    :catch_3d
    move-exception p1

    .line 62
    sget-object p2, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegCallback error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_58
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5d
    return-void
.end method
