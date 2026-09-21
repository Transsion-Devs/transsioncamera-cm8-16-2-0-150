.class Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch$1;->this$0:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 56
    invoke-static {}, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch$1;->this$0:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch$1;->this$0:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;->-$$Nest$fputmIsCallbackEnable(Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;Z)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch$1;->this$0:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;->sendSettingChangeRequest()V

    :cond_1c
    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 64
    invoke-static {}, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch$1;->this$0:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;->-$$Nest$fputmIsCallbackEnable(Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;Z)V

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch$1;->this$0:Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/automacroswitch/AutoMacroSwitch;->sendSettingChangeRequest()V

    return-void
.end method
