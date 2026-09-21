.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 3

    .line 1707
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1708
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1713
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-nez p0, :cond_2a

    .line 1715
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",but mgr is null,return."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1718
    :cond_2a
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_cc

    goto :goto_42

    .line 1754
    :pswitch_32
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 1755
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 1756
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    :cond_42
    :goto_42
    return-void

    .line 1748
    :pswitch_43
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay switch mode after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmLowMemoryLimitClickTime(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in PMasterMode when blur is on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1749
    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    .line 1750
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    .line 1751
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setMoreModeGuideEnable(Z)V

    return-void

    .line 1745
    :pswitch_72
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->playMoreModeGuideAnim()V

    return-void

    .line 1734
    :pswitch_7a
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowState(ZZ)V

    .line 1735
    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmIsShowingGuide(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    const/4 p1, 0x4

    const-wide/16 v0, 0x8fc

    .line 1736
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$msendEmptyMessageDelayed(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V

    return-void

    .line 1741
    :pswitch_8b
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowState(ZZ)V

    .line 1742
    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmIsShowingGuide(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    return-void

    .line 1728
    :pswitch_96
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->shrinkModePanel()V

    .line 1729
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowState(ZZ)V

    const/4 p1, 0x2

    const-wide/16 v0, 0xce4

    .line 1730
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$msendEmptyMessageDelayed(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V

    return-void

    .line 1720
    :pswitch_ab
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModePanelGuideEnable(Z)V

    .line 1721
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->spreadModePanel()V

    .line 1722
    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v0, 0x5c

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1723
    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmIsShowingGuide(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    const-wide/16 v2, 0x992

    .line 1724
    invoke-static {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$msendEmptyMessageDelayed(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V

    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_96
        :pswitch_8b
        :pswitch_7a
        :pswitch_8b
        :pswitch_72
        :pswitch_43
        :pswitch_32
    .end packed-switch
.end method
