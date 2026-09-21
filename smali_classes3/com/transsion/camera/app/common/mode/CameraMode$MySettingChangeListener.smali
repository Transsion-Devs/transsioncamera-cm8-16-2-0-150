.class Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/CameraMode;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/CameraMode;Lcom/transsion/camera/app/common/mode/CameraMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/mode/CameraMode;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 430
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 432
    :cond_c
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/mode/CameraMode;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_17
    return-void
.end method
