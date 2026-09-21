.class public final synthetic Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;

    return-void
.end method


# virtual methods
.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;->$r8$lambda$KnBc78oAZ3DADAc9ws3Hvtqd8Dw(Lcom/transsion/camera/feature/setting/portraitflare/PortraitFlare;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method
