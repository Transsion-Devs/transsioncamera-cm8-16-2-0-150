.class Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;
.super Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayUIInflateStage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V
    .registers 3

    .line 5869
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 5870
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    return-void
.end method


# virtual methods
.method public process()V
    .registers 3

    .line 5875
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoInflateOverlayUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 5876
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdateOverlaySettingUIList(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    .line 5878
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoInflateHelpUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 5879
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdateHelpGuide(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 5880
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoInflateMasterGuideUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 5882
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_2a

    .line 5883
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModePickerGuide()V

    .line 5884
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OverlayUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showMoreModeGuideAnim()V

    .line 5886
    :cond_2a
    invoke-super {p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->process()V

    return-void
.end method
