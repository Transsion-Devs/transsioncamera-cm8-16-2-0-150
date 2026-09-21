.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;

.field public final synthetic f$1:Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;->$r8$lambda$I7g5Gifp_cBPT7rFmxpy2c_ag04(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$TimerListenerWrapper;Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    return-void
.end method
