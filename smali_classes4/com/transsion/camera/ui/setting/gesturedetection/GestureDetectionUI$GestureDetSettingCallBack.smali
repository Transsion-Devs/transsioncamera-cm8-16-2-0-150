.class Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureDetSettingCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 4

    const/16 p1, 0x6e

    if-ne p2, p1, :cond_5

    return-void

    :cond_5
    const/16 p1, 0x78

    const/4 v0, 0x1

    if-ne p2, p1, :cond_10

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$mturnOnSwitch(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Z)V

    return-void

    .line 457
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    const-string p1, "1"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fputmIsTakePicture(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Z)V

    return-void
.end method
