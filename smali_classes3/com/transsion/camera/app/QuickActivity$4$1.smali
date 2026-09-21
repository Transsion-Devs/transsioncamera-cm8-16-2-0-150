.class Lcom/transsion/camera/app/QuickActivity$4$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/QuickActivity$4;->onDismissSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/QuickActivity$4;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/QuickActivity$4;Ljava/lang/String;)V
    .registers 3

    .line 549
    iput-object p1, p0, Lcom/transsion/camera/app/QuickActivity$4$1;->this$1:Lcom/transsion/camera/app/QuickActivity$4;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity$4$1;->this$1:Lcom/transsion/camera/app/QuickActivity$4;

    iget-object v0, v0, Lcom/transsion/camera/app/QuickActivity$4;->this$0:Lcom/transsion/camera/app/QuickActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 553
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity$4$1;->this$1:Lcom/transsion/camera/app/QuickActivity$4;

    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity$4;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/QuickActivity;->-$$Nest$fputmSetShowWhenLocked(Lcom/transsion/camera/app/QuickActivity;Z)V

    return-void
.end method
