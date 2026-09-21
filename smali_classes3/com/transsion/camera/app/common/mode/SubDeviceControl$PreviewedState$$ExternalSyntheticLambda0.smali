.class public final synthetic Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;

.field public final synthetic f$1:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    return-void
.end method


# virtual methods
.method public final onPlayDone(Z)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->$r8$lambda$qNpqDOai19C9VycpYLsN0_bo87Y(Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method
