.class Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlashFire()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->-$$Nest$fgetmScreenFlashFireSupported(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->-$$Nest$fgetmFlashFireCallback(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->-$$Nest$fgetmFlashFireCallback(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;->onFlashFire()V

    :cond_19
    return-void
.end method

.method public onFlashRequired(Z)V
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x6

    if-le v0, v1, :cond_14

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_14
    if-lt v0, v2, :cond_23

    .line 74
    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_23

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->-$$Nest$fgetmScreenFlash(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->processOnPreview(Z)V

    .line 78
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isFlashOpen()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->-$$Nest$fgetmScreenFlash(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFeatureOpen()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 79
    :cond_37
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    .line 82
    :cond_3f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->-$$Nest$fputmCachedFlashRequired(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;Z)V

    return-void
.end method
