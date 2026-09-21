.class public final synthetic Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;

    check-cast p1, Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->$r8$lambda$gB8RFSxG8wpdjqFTmlNeuyZOdco(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;Landroid/os/Handler;)V

    return-void
.end method
