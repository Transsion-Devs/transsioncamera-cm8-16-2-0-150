.class public final synthetic Lcom/transsion/camera/adapter/CaptureResultMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;


# direct methods
.method public synthetic constructor <init>([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor$$ExternalSyntheticLambda0;->f$0:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor$$ExternalSyntheticLambda0;->f$0:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->$r8$lambda$Hw070tVVVEQswdqdYLe_aZObZWQ([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method
