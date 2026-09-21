.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;

.field public final synthetic f$1:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;->$r8$lambda$tYFuXXSFv41LwP0oQJPZV-FjZQw(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    return-void
.end method
