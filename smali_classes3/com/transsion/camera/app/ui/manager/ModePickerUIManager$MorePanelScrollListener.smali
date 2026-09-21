.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MorePanelScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public notifyNeedSwitchMode()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->notifyNeedSwitchMode(Z)V

    :cond_12
    return-void
.end method

.method public onMorePanelScroll()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->scrollToPrevious()V

    :cond_11
    return-void
.end method
