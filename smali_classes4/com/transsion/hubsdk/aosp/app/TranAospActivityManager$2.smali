.class Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->registerTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

.field final synthetic val$listener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;->val$listener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockTaskModeChanged(I)V
    .registers 5

    .line 290
    # getter for: Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLockTaskModeChanged listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;->val$listener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;->val$listener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/TranTaskStackListener;->onLockTaskModeChanged(I)V

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 6

    .line 278
    # getter for: Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskCreated listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;->val$listener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;->val$listener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranTaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .registers 6

    .line 284
    # getter for: Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskFocusChanged listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;->val$listener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$2;->val$listener:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranTaskStackListener;->onTaskFocusChanged(IZ)V

    return-void
.end method
