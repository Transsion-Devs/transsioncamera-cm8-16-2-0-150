.class Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/TopBarUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriscopeCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .registers 2

    .line 661
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;->onSwitchPeriscopeCamera(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
