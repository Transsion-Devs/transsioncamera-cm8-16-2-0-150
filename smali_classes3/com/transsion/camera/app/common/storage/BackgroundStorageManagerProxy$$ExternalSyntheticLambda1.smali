.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;


# direct methods
.method public synthetic constructor <init>(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda1;->f$0:J

    iput-object p3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda1;->f$0:J

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    check-cast p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->$r8$lambda$musbNTpMoKsUTNMCZRBgSFpfMvM(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    return-void
.end method
