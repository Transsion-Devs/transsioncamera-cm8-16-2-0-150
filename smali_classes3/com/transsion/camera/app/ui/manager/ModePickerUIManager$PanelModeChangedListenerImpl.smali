.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 2

    .line 1600
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .registers 4

    .line 1604
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    goto :goto_16

    .line 1607
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$mupdateHorizontalScroll(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    goto :goto_1b

    .line 1605
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$mregisterScrollListener(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    .line 1609
    :goto_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_24

    .line 1610
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 1612
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabSellingPointState()V

    .line 1613
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabFeatureName()V

    .line 1614
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMode(Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateMoreTabView()V

    .line 1616
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->showMode(Ljava/lang/String;)V

    return-void
.end method
