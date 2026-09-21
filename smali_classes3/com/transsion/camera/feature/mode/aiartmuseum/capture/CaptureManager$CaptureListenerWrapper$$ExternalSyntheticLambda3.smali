.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onCaptureStart()V

    return-void
.end method
