.class Lcom/transsion/camera/app/ui/AbstractShutterUI$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 1502
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .registers 3

    .line 1505
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmOldValue(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-eq p1, v0, :cond_12

    .line 1506
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmOldValue(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V

    .line 1507
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    :cond_12
    return-void
.end method
