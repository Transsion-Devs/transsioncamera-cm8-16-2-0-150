.class Lcom/transsion/camera/app/ui/HelpGuideUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/HelpGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/HelpGuideUI;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$1;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$1;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->-$$Nest$fgetmOldValue(Lcom/transsion/camera/app/ui/HelpGuideUI;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$1;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->-$$Nest$fgetmOldValue(Lcom/transsion/camera/app/ui/HelpGuideUI;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$1;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->-$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/app/ui/HelpGuideUI;)V

    :cond_1a
    return-void
.end method
