.class Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionDetectSwitchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 6

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetTAG(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataCallback, needShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetmZoomWeelUIShowing(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3d

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fputmDataCallBackAllowShowIcon(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Z)V

    :cond_3d
    const/4 p1, 0x1

    if-ne p2, p1, :cond_63

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetmNeedShowIcon(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetmZoomWeelUIShowing(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_57

    .line 370
    :cond_51
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->showIcon()V

    return-void

    .line 367
    :cond_57
    :goto_57
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetTAG(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "no need show icon"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_63
    if-nez p2, :cond_6b

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    return-void

    :cond_6b
    const/4 p1, 0x4

    if-ne p2, p1, :cond_7f

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetTAG(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onDataCallback, MOTION_CAPTURE_SWITCH_DEFAULT:"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$msetIconDefault(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    return-void

    .line 377
    :cond_7f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetTAG(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback:  switchIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$mswitchIcon(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;I)V

    return-void
.end method
