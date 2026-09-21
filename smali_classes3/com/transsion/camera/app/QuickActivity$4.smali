.class Lcom/transsion/camera/app/QuickActivity$4;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/QuickActivity;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/QuickActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/QuickActivity;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/transsion/camera/app/QuickActivity$4;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 1

    .line 560
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    return-void
.end method

.method public onDismissError()V
    .registers 1

    .line 543
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissError()V

    return-void
.end method

.method public onDismissSucceeded()V
    .registers 5

    .line 548
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onWindowFocusChanged requestDismissKeyguard onDismissSucceeded"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/SchedThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/QuickActivity$4$1;

    const-string v2, "onDismissSucceeded"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/QuickActivity$4$1;-><init>(Lcom/transsion/camera/app/QuickActivity$4;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->schedule(Lcom/transsion/camera/utils/threads/WorkTask;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
