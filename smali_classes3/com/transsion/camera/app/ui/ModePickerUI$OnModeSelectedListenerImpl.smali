.class Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnModeSelectedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    return-void
.end method


# virtual methods
.method public onModeSelected(I)V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeInformation(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeIndexInTabLayout(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)I

    move-result v0

    if-ne v0, p1, :cond_16

    .line 591
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "OnModeSelectedListener return because same index."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 594
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeInformation(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;I)V

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmOrderEditorFragmentControl(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    move-result-object p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmOrderEditorFragmentControl(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->isEditorFragmentShow()Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_5f

    .line 598
    :cond_34
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmIsResumeAfterEdit(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_5f

    .line 601
    :cond_3d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentTab(Z)V

    .line 602
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mnotifyModeSwitch(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeSelector(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeSelector(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->isOutSideShown()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowVisibility(Z)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public onStopScrolling()V
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0xb9

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method

.method public onTabScrolling()V
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnModeSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0xb8

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
