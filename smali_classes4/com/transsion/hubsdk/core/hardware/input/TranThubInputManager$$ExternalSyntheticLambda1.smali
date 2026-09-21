.class public final synthetic Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Landroid/graphics/Region;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Region;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->$r8$lambda$5mDoMbO-0d9ySgz-t23eXQOFiYQ(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Landroid/os/IBinder;Landroid/graphics/Region;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
