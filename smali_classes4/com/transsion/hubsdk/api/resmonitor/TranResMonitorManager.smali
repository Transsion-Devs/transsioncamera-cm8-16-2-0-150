.class public Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;
    }
.end annotation


# static fields
.field private static final ADAPTER_EXCEPTION:Ljava/lang/String; = "adapter is Null"

.field private static final CALLBACK_NULL_INFO:Ljava/lang/String; = "Callback must not null!!!"

.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final TAG:Ljava/lang/String; = "TranResMonitorManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 31
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    .line 32
    sget-object p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubResMonitorManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 34
    :cond_1a
    new-instance v0, Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    .line 35
    sget-object p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospResMonitorManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 4

    .line 312
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p2, :cond_c

    .line 321
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    return-void

    .line 318
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Callback must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 3

    .line 355
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_c

    .line 364
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    return-void

    .line 361
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Callback must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 357
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 221
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 219
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEventStatic(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 148
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 152
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventStatic(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .registers 13

    .line 55
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_12

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 64
    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    return-void

    .line 61
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Callback must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 258
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    return-void

    .line 255
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setEventStatic(ILjava/lang/String;)V
    .registers 3

    .line 182
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 186
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->setEventStatic(ILjava/lang/String;)V

    return-void

    .line 184
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 2

    .line 105
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p0, :cond_c

    .line 114
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    return-void

    .line 111
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Callback must not null!!!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "adapter is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEvent(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 166
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz p0, :cond_9

    .line 169
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 167
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 4

    .line 290
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz p0, :cond_12

    if-eqz p3, :cond_a

    .line 298
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    return-void

    .line 295
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Callback must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz p0, :cond_9

    .line 239
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 237
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 3

    .line 334
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz p0, :cond_12

    if-eqz p2, :cond_a

    .line 342
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    return-void

    .line 339
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Callback must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 335
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 400
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    return-object p0
.end method

.method public regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .registers 7

    .line 84
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz p0, :cond_12

    if-eqz p2, :cond_a

    .line 92
    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    return-void

    .line 89
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Callback must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEvent(ILjava/lang/String;)V
    .registers 3

    .line 199
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz p0, :cond_8

    .line 202
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->setEvent(ILjava/lang/String;)V

    return-void

    .line 200
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz p0, :cond_8

    .line 276
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    return-void

    .line 273
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setService(Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 404
    iput-object p1, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    return-void
.end method

.method public unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    .line 134
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    return-void

    .line 131
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Callback must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
