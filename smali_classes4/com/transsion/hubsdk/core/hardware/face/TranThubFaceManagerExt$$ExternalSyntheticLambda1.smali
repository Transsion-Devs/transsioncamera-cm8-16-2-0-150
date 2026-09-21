.class public final synthetic Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;

.field public final synthetic f$3:Landroid/os/Handler;

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;Landroid/os/Handler;IZ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$1:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;

    iput-object p4, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$3:Landroid/os/Handler;

    iput p5, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$4:I

    iput-boolean p6, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$1:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;

    iget-object v3, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$3:Landroid/os/Handler;

    iget v4, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$4:I

    iget-boolean v5, p0, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt$$ExternalSyntheticLambda1;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;->$r8$lambda$3FTbWyON1ubypBqil1qX-ITYNWU(Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/hardware/face/ITranAuthenticationCallback;Landroid/os/Handler;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
