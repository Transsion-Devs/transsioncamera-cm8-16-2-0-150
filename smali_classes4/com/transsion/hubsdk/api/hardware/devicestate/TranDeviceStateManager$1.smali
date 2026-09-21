.class Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/hardware/devicestate/TranAospDeviceStateManagerExt$ITranDeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBaseStateChanged(I)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    # getter for: Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
    invoke-static {v0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 101
    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    # getter for: Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
    invoke-static {p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;->onBaseStateChanged(I)V

    :cond_11
    return-void
.end method

.method public onStateChanged(I)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    # getter for: Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
    invoke-static {v0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 117
    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    # getter for: Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
    invoke-static {p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;->onStateChanged(I)V

    :cond_11
    return-void
.end method

.method public onSupportedStatesChanged([I)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    # getter for: Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
    invoke-static {v0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 80
    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$1;->this$0:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;

    # getter for: Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->mCallback:Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;
    invoke-static {p0}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;->access$000(Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager;)Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/devicestate/TranDeviceStateManager$ITranDeviceStateCallback;->onSupportedStatesChanged([I)V

    :cond_11
    return-void
.end method
