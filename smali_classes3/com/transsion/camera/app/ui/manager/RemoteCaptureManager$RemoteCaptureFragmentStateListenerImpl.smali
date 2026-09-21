.class Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteCaptureFragmentStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x8a

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onFragmentResume()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager$RemoteCaptureFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x8b

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
