.class Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterSoundOptionalFragmentStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xf0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onFragmentResume()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager$ShutterSoundOptionalFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterSoundOptionalManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xf1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
