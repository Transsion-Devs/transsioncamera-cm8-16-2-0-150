.class Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 49
    const-string v0, "TranThubLightingManager"

    const-string v1, "ITranLightingManager binder died, notifying listeners"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    monitor-enter v0

    .line 53
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    # getter for: Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;
    invoke-static {p0}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->access$000(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_37

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p0, :cond_36

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    .line 58
    :try_start_29
    invoke-interface {v2}, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;->onServiceDied()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_1f

    :catch_2d
    move-exception v2

    .line 60
    const-string v3, "TranThubLightingManager"

    const-string v4, "Error notifying listener on service death"

    invoke-static {v3, v4, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :cond_36
    return-void

    :catchall_37
    move-exception p0

    .line 54
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method
