.class public final synthetic Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;

    check-cast p1, Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;-><init>(Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-object p0
.end method
