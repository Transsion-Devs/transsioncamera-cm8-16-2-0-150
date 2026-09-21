.class public Lcom/transsion/camera/adapter/CameraProxy$DeferredData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredData"
.end annotation


# instance fields
.field public auxPreviewSize:Landroid/util/Size;

.field public backgroundPreviewSize:Landroid/util/Size;

.field public channel:Lcom/transsion/camera/adapter/CameraDataChannel;

.field public previewSize:Landroid/util/Size;

.field public previewSurfaceType:I

.field public supportAuxPreview:Z

.field public supportBackgroundPreview:Z

.field public supportSlavePreview:Z


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ZZZILcom/transsion/camera/adapter/CameraDataChannel;)V
    .registers 9

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->auxPreviewSize:Landroid/util/Size;

    .line 35
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->backgroundPreviewSize:Landroid/util/Size;

    .line 36
    iput-boolean p4, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    .line 37
    iput-boolean p5, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportBackgroundPreview:Z

    .line 38
    iput-boolean p6, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportSlavePreview:Z

    .line 39
    iput p7, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    .line 40
    iput-object p8, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->channel:Lcom/transsion/camera/adapter/CameraDataChannel;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeferredData{previewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", auxPreviewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->auxPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundPreviewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->backgroundPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previewSurfaceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->channel:Lcom/transsion/camera/adapter/CameraDataChannel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
