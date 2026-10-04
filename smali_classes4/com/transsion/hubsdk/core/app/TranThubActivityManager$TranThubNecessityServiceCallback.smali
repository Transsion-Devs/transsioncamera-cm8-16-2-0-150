.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;
.super Lcom/transsion/hubsdk/internal/app/ITranNecessityWindowService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubNecessityServiceCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;)V
    .registers 3

    .line 1567
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/internal/app/ITranNecessityWindowService$Stub;-><init>()V

    .line 1568
    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    return-void
.end method


# virtual methods
.method public interceptUnknowSourceWindow(Landroid/os/Bundle;)V
    .registers 4

    .line 1573
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    if-eqz p0, :cond_21

    .line 1575
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;->interceptUnknowSourceWindow(Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 1577
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptUnknowSourceWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public scanUnknowSourceIfNeedWindow(Landroid/os/Bundle;)V
    .registers 4

    .line 1584
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubNecessityServiceCallback;->mCallback:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    if-eqz p0, :cond_21

    .line 1586
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;->scanUnknowSourceIfNeedWindow(Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 1588
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanUnknowSourceIfNeedWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method
