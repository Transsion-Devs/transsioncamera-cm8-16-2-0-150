.class Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabSelectedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 2

    .line 1848
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    return-void
.end method


# virtual methods
.method public onTabSelected(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .registers 4

    .line 1851
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmScreenFormTypeChanged(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1852
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmScreenFormTypeChanged(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    return-void

    .line 1855
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmIsSelectMoreTabView(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1856
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmIsDisableEnterMoreAnimation(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    return-void

    .line 1859
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeInformation(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;I)V

    .line 1860
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_61

    .line 1863
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmIsResumeAfterEdit(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_61

    .line 1866
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mupdateCurrentModeSelector(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 1867
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mupdateCurrentModeUI(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 1868
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ModePickerUI;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_62

    .line 1869
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmNeedSwitchMode(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 1870
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmNeedSwitchMode(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    .line 1871
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mnotifyModeSwitch(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    :cond_61
    :goto_61
    return-void

    .line 1875
    :cond_62
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeInformation(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p1

    .line 1876
    const-string v0, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 1877
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const-string v0, "slide_preview_or_click_tab"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordEnterGoProModeOperation(Ljava/lang/String;)V

    .line 1879
    :cond_7d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mnotifyModeSwitch(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 1880
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabSelectedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmIsDisableEnterMoreAnimation(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    return-void
.end method
