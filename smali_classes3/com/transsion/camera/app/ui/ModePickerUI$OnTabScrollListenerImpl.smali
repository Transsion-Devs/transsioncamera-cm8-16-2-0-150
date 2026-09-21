.class Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabScrollListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 2

    .line 2007
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    return-void
.end method


# virtual methods
.method public onScrolling()V
    .registers 3

    .line 2043
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmStopScroll(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2044
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mupdateMoreModeGuideLeftRootLocation(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    .line 2045
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2046
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mupdateMoreCancelRootParams(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    :cond_26
    return-void
.end method

.method public onTabScroll(F)V
    .registers 6

    .line 2010
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result p1

    .line 2011
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v0

    .line 2012
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->isSupportUI5MoreModeStyle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/ModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 2013
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mupdateMoreCancelRootParams(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    add-int/lit8 v1, v0, -0x1

    if-eq p1, v1, :cond_3a

    .line 2015
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeCancelRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    .line 2017
    :cond_3a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeCancelRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2020
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePickerUI;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_a4

    .line 2023
    :cond_52
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmLeftGuideRootMoveFollowTab(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_a4

    :cond_5b
    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_6a

    .line 2027
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fputmLeftGuideRootMoveFollowTab(Lcom/transsion/camera/app/ui/ModePickerUI;Z)V

    .line 2028
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$mexitMoreModeGuideAnimation(Lcom/transsion/camera/app/ui/ModePickerUI;)V

    return-void

    .line 2031
    :cond_6a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p1

    if-eqz p1, :cond_a4

    const/4 p1, 0x2

    .line 2032
    new-array p1, p1, [I

    .line 2033
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2034
    aget p1, p1, v2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreTabOriginalLocation(Lcom/transsion/camera/app/ui/ModePickerUI;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2035
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideLeftRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 2036
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideLeftRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmMoreModeGuideRootTranX(Lcom/transsion/camera/app/ui/ModePickerUI;)F

    move-result p0

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_a4
    :goto_a4
    return-void
.end method
