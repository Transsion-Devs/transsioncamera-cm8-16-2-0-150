.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;
.super Lcom/transsion/hubsdk/app/ITranAppRecoveryCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAppRecoveryCallback"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;Landroid/os/IBinder;)V
    .registers 4

    .line 1497
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranAppRecoveryCallback$Stub;-><init>()V

    .line 1498
    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;

    .line 1499
    iput-object p3, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onSaveStateWhenError(Landroid/os/Bundle;)V
    .registers 8

    .line 1504
    const-string v0, "setActivityState error: "

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;
    invoke-static {v1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v1

    if-nez v1, :cond_10

    goto/16 :goto_9b

    .line 1508
    :cond_10
    :try_start_10
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_40
    .catchall {:try_start_10 .. :try_end_15} :catchall_42

    .line 1509
    :try_start_15
    iget-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mCallback:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;

    invoke-interface {p1, v1}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;->onSaveStateWhenError(Landroid/os/Bundle;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_40
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3e

    .line 1515
    :try_start_1a
    iget-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;
    invoke-static {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, p0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setActivityState(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 1517
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :catchall_3e
    move-exception p1

    goto :goto_77

    :catch_40
    move-exception p1

    goto :goto_47

    :catchall_42
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_77

    :goto_47
    const/4 v1, 0x0

    .line 1512
    :try_start_48
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSaveStateWhenError error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_3e

    .line 1515
    :try_start_60
    iget-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;
    invoke-static {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, p0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setActivityState(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_6b} :catch_6c

    goto :goto_9b

    :catch_6c
    move-exception p0

    .line 1517
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_30

    .line 1515
    :goto_77
    :try_start_77
    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;
    invoke-static {v2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2, p0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setActivityState(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_82} :catch_83

    goto :goto_9a

    :catch_83
    move-exception p0

    .line 1517
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :goto_9a
    throw p1

    :cond_9b
    :goto_9b
    return-void
.end method
