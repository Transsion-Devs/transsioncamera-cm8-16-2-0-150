.class Lcom/transsion/camera/app/QuickActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/QuickActivity;
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

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/app/QuickActivity$1;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity$1;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/QuickActivity;->-$$Nest$fgetmSkippedFirstOnResume(Lcom/transsion/camera/app/QuickActivity;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 150
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "delayed Runnable --> onResumeTasks()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity$1;->this$0:Lcom/transsion/camera/app/QuickActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/QuickActivity;->-$$Nest$fputmSkippedFirstOnResume(Lcom/transsion/camera/app/QuickActivity;Z)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity$1;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionResumeTasks()V

    :cond_1c
    return-void
.end method
