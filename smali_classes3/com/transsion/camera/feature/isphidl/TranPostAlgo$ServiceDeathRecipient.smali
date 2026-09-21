.class Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/isphidl/TranPostAlgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;Lcom/transsion/camera/feature/isphidl/TranPostAlgo-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;-><init>(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 235
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[binderDied] Postalgo Service died!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    iget-object v0, v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    iget-object v0, v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;->onServiceDied()V

    .line 239
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->-$$Nest$fputmService(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;Lcom/transsion/campostalgo/ICamPostAlgoService;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    invoke-static {v0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->init(Landroid/content/Context;Z)Z

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    invoke-static {v0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->-$$Nest$fgetmService(Lcom/transsion/camera/feature/isphidl/TranPostAlgo;)Lcom/transsion/campostalgo/ICamPostAlgoService;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    iget-object v0, v0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo$ServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;->reConnect()V

    :cond_53
    return-void
.end method
