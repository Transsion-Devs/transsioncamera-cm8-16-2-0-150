.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;
.super Lcom/transsion/hubsdk/app/ITranTaskStackListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubTaskStackListener"
.end annotation


# instance fields
.field private mListener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .registers 3

    .line 452
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranTaskStackListener$Stub;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;->mListener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    return-void
.end method


# virtual methods
.method public onLockTaskModeChanged(I)V
    .registers 5

    .line 474
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLockTaskModeChanged mListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;->mListener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;->mListener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    if-eqz p0, :cond_21

    .line 476
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/TranTaskStackListener;->onLockTaskModeChanged(I)V

    :cond_21
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 6

    .line 458
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskCreated mListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;->mListener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;->mListener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    if-eqz p0, :cond_21

    .line 460
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranTaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_21
    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .registers 6

    .line 466
    # getter for: Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskFocusChanged mListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;->mListener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;->mListener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    if-eqz p0, :cond_21

    .line 468
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranTaskStackListener;->onTaskFocusChanged(IZ)V

    :cond_21
    return-void
.end method
