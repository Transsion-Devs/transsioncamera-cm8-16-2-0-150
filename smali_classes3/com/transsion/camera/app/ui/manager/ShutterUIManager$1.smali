.class Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->hideCShotNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/ui/IShutterUI;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/ui/IShutterUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->hideCShotNumber()V

    :cond_11
    return-void
.end method
