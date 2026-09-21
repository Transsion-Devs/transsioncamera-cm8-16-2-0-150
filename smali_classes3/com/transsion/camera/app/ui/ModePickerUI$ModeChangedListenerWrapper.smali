.class Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method public static synthetic $r8$lambda$egEUixZ4dSXqxE_ShDTChlJT4c0(Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->lambda$onSwitchMode$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 3

    .line 1839
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1840
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method private synthetic lambda$onSwitchMode$0()V
    .registers 3

    .line 1862
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 1863
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1864
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreTabChangeListener(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1865
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreTabChangeListener(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;->onMoreTabChanged(Ljava/lang/String;)V

    .line 1868
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateHeadFootPadding()V

    .line 1869
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mupdateMoreCancelRootState(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .registers 5

    .line 1845
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 1846
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1847
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 1848
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_21

    goto/16 :goto_98

    .line 1851
    :cond_21
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_98

    .line 1855
    :cond_28
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->getTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeInformation(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->-$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 1856
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1857
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1859
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->more_mode_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 1861
    :cond_64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7e

    .line 1873
    :cond_73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeCancelRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1876
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;Ljava/lang/String;)V

    .line 1877
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeOrderProvider(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1878
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mupdateMoreModeGuideUI(Lcom/transsion/camera/app/ui/ModePickerUI;Ljava/lang/String;)V

    :cond_98
    :goto_98
    return-void
.end method
