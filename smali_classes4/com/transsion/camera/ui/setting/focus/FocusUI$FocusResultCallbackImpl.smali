.class Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focus/FocusUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 2

    .line 728
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 6

    .line 731
    invoke-static {}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusResultCallback data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 732
    const-string v0, "focus_ui_active"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 733
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmActiveFocusEnable(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    .line 734
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmActiveFocusEnable(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mnotifyExposureChange(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    return-void

    .line 737
    :cond_34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    move-result-object p0

    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
