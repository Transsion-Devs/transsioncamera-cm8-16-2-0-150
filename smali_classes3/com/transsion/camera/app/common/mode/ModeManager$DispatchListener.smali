.class Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 2

    .line 2905
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    return-void
.end method


# virtual methods
.method public dispatchDone(Ljava/lang/String;)V
    .registers 3

    .line 2915
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2916
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onSettingChangeDone(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public dispatchStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2908
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2909
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method
