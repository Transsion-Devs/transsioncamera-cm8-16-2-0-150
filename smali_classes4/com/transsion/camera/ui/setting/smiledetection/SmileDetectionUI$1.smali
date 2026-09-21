.class Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;-><init>(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->-$$Nest$fgetmIsTackPicture(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 161
    invoke-static {}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "abort capture when capture task is excusing."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->-$$Nest$msuperNightLiteOn(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 165
    invoke-static {}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "super night lite on, skip "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->-$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->-$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 171
    :cond_37
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->-$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    return-void
.end method
