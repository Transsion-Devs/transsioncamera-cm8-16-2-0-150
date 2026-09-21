.class Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 4034
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onArcFilterClicked()V
    .registers 2

    .line 4101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_b

    .line 4102
    const-string v0, "key_filter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onCelebrityClicked()V
    .registers 2

    .line 4122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_b

    .line 4123
    const-string v0, "key_celebrity_scene"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onColorStyleClicked()V
    .registers 2

    .line 4115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_b

    .line 4116
    const-string v0, "key_color_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onEditWaTerMarkClicked()V
    .registers 4

    .line 4068
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v1, :cond_2b

    .line 4069
    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmTopLayerRoot(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4071
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1a

    move v1, v2

    .line 4074
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setRTLDirection(Z)V

    .line 4075
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->enterEditWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    :cond_2b
    return-void
.end method

.method public onGoldWaterMarkClicked()V
    .registers 4

    .line 4081
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    if-eqz v1, :cond_2b

    .line 4082
    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmTopLayerRoot(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4084
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1a

    move v1, v2

    .line 4087
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->setRTLDirection(Z)V

    .line 4088
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoldWaterMarkManager:Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/manager/GoldWaterMarkManager;->enterGoldWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    :cond_2b
    return-void
.end method

.method public onHelpGuideClicked()V
    .registers 4

    .line 4047
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onHelpGuideClicked] CustomConfigUtil.getInstance().mIsSupportImageryGuide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4048
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    if-eqz v0, :cond_37

    .line 4049
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    if-nez v1, :cond_2f

    .line 4050
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->createImageryGuideManager()V

    .line 4052
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mImageryGuideManager:Lcom/transsion/camera/manager/BaseImageryGuideManager;

    invoke-virtual {p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;->enterFragment()V

    return-void

    .line 4055
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v1, :cond_5f

    .line 4056
    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmTopLayerRoot(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4058
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_51

    move v1, v2

    .line 4061
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setRTLDirection(Z)V

    .line 4062
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->enterGuideFragment()V

    :cond_5f
    return-void
.end method

.method public onImageStyleClicked()V
    .registers 2

    .line 4094
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_b

    .line 4095
    const-string v0, "key_image_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onProWaterMarkClicked()V
    .registers 4

    .line 4129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    if-eqz v1, :cond_2b

    .line 4130
    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmTopLayerRoot(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1a

    move v1, v2

    .line 4136
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->setRTLDirection(Z)V

    .line 4137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mProWatermarkManager:Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/manager/ProWatermarkManager;->enterProWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    :cond_2b
    return-void
.end method

.method public onSettingClicked()V
    .registers 3

    .line 4037
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v1, :cond_1b

    .line 4038
    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmTopLayerRoot(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4039
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmTopLayerRoot(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4041
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$menterSettingFragment(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    :cond_1b
    return-void
.end method

.method public onSuperNightFilterClicked()V
    .registers 2

    .line 4108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_b

    .line 4109
    const-string v0, "key_supernight_filter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
