.class public final synthetic Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;

    return-void
.end method


# virtual methods
.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->$r8$lambda$naRTBDivgWU_qg6ncUDVMdvLdsA(Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method
