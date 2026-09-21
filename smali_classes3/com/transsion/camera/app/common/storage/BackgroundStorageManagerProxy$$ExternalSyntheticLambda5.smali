.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    check-cast p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->$r8$lambda$wM_fV_9HbBafYVpPc5pzMzwYGAQ(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    return-void
.end method
