.class Lcom/transsion/camera/app/common/mode/ModeManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;->onOfflineSwitchFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

.field final synthetic val$offlineType:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;I)V
    .registers 3

    .line 1614
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$4;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    iput p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$4;->val$offlineType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1617
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$4;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1618
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$4;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$4;->val$offlineType:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;->onOfflineSwitchFinish(I)V

    :cond_13
    return-void
.end method
