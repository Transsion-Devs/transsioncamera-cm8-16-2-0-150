.class public final synthetic Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    return-void
.end method


# virtual methods
.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->$r8$lambda$zqOz57a7hhjq4eyvcGZgRMdayBY(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method
