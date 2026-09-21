.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;
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
    name = "ModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 2

    .line 1516
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .registers 8

    .line 1519
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchMode() called with: modeName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1521
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "slide_preview_or_click_tab"

    const/4 v3, 0x0

    if-eqz v1, :cond_6a

    .line 1522
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClickGuideIconEnterMoreMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmClickGuideIconEnterMoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1523
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmClickGuideIconEnterMoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1524
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmClickGuideIconEnterMoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    .line 1525
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const-string v2, "click_guide_icon"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordEnterMoreModeOperation(Ljava/lang/String;)V

    goto :goto_c3

    .line 1527
    :cond_62
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordEnterMoreModeOperation(Ljava/lang/String;)V

    goto :goto_c3

    .line 1529
    :cond_6a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmChangedModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 1530
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmChangedModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClickModeIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmClickModeIcon(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1532
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmClickModeIcon(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1533
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmClickModeIcon(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    .line 1534
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const-string v2, "click_mode_icon"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    goto :goto_c3

    .line 1536
    :cond_bc
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    .line 1539
    :cond_c3
    :goto_c3
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v1

    if-nez v1, :cond_d9

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I
    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_d3

    goto :goto_d9

    .line 1542
    :cond_d3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$mupdateHorizontalScroll(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    goto :goto_de

    .line 1540
    :cond_d9
    :goto_d9
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$mregisterScrollListener(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    .line 1544
    :goto_de
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerConfig(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v1

    if-eqz v1, :cond_196

    .line 1545
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 1546
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10b

    .line 1547
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V

    .line 1549
    :cond_10b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x92

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    .line 1551
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->hideInteractiveUI()V

    .line 1552
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideHintLayout(Z)V

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideTopAndBottomView(Z)V

    .line 1554
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->show()V

    .line 1555
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmChangedModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    goto :goto_196

    .line 1557
    :cond_14a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x9b

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideHintLayout(Z)V

    .line 1560
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_184

    .line 1561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmIsZoomScaling(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v0

    if-nez v0, :cond_18d

    .line 1562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideTopAndBottomView(Z)V

    goto :goto_18d

    .line 1565
    :cond_184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideTopAndBottomView(Z)V

    .line 1567
    :cond_18d
    :goto_18d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->hide()V

    .line 1571
    :cond_196
    :goto_196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v1, :cond_1cb

    .line 1572
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmIsCameraSwitching(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v0

    if-nez v0, :cond_1cb

    .line 1573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->setVal(Landroid/content/Context;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabSellingPointState()V

    .line 1576
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateTabFeatureName()V

    .line 1577
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->showMode(Ljava/lang/String;)V

    .line 1580
    :cond_1cb
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->refreshModePanelView()V

    return-void
.end method
