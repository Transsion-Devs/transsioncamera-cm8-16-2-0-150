.class Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkFragmentStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 243
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->unInit()V

    return-void
.end method

.method public onFragmentExitView()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xfd

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onFragmentResume()V
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x68

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
