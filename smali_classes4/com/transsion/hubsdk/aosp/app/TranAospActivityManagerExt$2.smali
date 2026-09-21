.class Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;
.super Landroid/app/TaskStackListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->registerTaskStackListener(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;

.field final synthetic val$listener:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;->val$listener:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockTaskModeChanged(I)V
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLockTaskModeChanged listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;->val$listener:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranAospActivityManagerExt"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;->val$listener:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;

    if-eqz p0, :cond_1f

    .line 99
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;->onLockTaskModeChanged(I)V

    :cond_1f
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskCreated listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;->val$listener:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranAospActivityManagerExt"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;->val$listener:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;

    if-eqz p0, :cond_1f

    .line 83
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_1f
    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .registers 5

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskFocusChanged listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;->val$listener:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranAospActivityManagerExt"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;->val$listener:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;

    if-eqz p0, :cond_1f

    .line 91
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;->onTaskFocusChanged(IZ)V

    :cond_1f
    return-void
.end method
