.class final Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StellarTrackListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;


# direct methods
.method public static synthetic $r8$lambda$LOdKN_bVAHsaB_DRgky5kC48lbg(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;->lambda$onStarSearched$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYFuXXSFv41LwP0oQJPZV-FjZQw(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;->lambda$onStellarTrackCancel$1(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;)V
    .registers 2

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;

    return-void
.end method

.method private synthetic lambda$onStarSearched$0(I)V
    .registers 2

    .line 874
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;->onStarSearched(I)V

    return-void
.end method

.method private synthetic lambda$onStellarTrackCancel$1(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 2

    .line 879
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;->onStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    return-void
.end method


# virtual methods
.method public onStarSearched(I)V
    .registers 3

    .line 874
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;I)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 3

    .line 879
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$StellarTrackListenerWrapper;Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
