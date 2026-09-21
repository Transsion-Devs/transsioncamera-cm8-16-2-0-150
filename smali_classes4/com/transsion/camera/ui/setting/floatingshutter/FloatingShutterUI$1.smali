.class Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;->this$0:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 4

    .line 150
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;->this$0:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;

    # setter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;
    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->access$002(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;Landroid/view/View;)Landroid/view/View;

    .line 152
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;->this$0:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->-$$Nest$fgetmIModuleTransfer(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)Lcom/transsion/camera/app/common/IModuleTransfer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;->this$0:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->-$$Nest$fgetmOldValue(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;->this$0:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->-$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$1;->this$0:Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;->-$$Nest$fgetmIFloatingShutterListener(Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;)Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;->floatShutterViewOnCreated()V

    return-void
.end method
