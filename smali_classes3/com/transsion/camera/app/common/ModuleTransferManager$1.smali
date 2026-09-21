.class Lcom/transsion/camera/app/common/ModuleTransferManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ModuleTransferManager;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$1;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$1;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/common/ModuleTransferManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$1;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/common/ModuleTransferManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 154
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ringScreenLightOpeningStatus set OFF"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$1;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/common/ModuleTransferManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$1;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/common/ModuleTransferManager;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "ringscreenlightopening"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_41
    return-void
.end method
