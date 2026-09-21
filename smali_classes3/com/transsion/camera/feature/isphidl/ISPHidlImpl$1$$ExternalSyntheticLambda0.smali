.class public final synthetic Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->$r8$lambda$QDUEL2qVKXt0G5SRxhsrYYpnwvE(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;ZLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p0

    return-object p0
.end method
