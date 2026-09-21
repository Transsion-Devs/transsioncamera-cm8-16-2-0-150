.class Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProWaterMarkFragmentStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;Lcom/transsion/camera/app/ui/manager/ProWatermarkManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xf5

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onFragmentExitView()V
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xfd

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onFragmentResume()V
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager$ProWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xf6

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
