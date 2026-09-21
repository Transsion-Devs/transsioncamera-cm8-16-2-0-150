.class public final synthetic Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/adapter/CameraParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/adapter/CameraParameters;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/adapter/CameraParameters;

    check-cast p1, Landroid/util/Range;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setLimitFpsRange(Landroid/util/Range;)V

    return-void
.end method
