.class Lcom/transsion/camera/feature/setting/focus/Focus$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/Focus;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStarted]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmIsPreviewStarted(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmIsShowUI(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusParameterConfigure(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updatePreviewState(Z)V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusCallback()V

    :cond_31
    return-void
.end method

.method public onPreviewStopped()V
    .registers 4

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStopped],getValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsAutoFocusTriggered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmIsAutoFocusTriggered(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmIsPreviewStarted(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$mresetFocusArea(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusParameterConfigure(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updatePreviewState(Z)V

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->resetAutoFocusTriggered()V

    .line 510
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmIsAutoFocusTriggered(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmIsAutoFocusTriggered(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStopped, updateFocusMode value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_b1
    return-void
.end method
