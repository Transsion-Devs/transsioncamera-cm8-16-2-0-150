.class public final synthetic Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    return-void
.end method


# virtual methods
.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->$r8$lambda$mQ9_L4Utz1QbJCbbXNmQvKuOWu0(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method
