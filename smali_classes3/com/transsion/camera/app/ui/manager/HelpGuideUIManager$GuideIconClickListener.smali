.class Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideIconClickListener"
.end annotation


# instance fields
.field fm:Landroid/app/FragmentManager;

.field layoutId:I

.field pagerIds:Ljava/util/List;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Landroid/app/FragmentManager;ILjava/util/List;)V
    .registers 5

    .line 359
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->fm:Landroid/app/FragmentManager;

    .line 361
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->layoutId:I

    .line 362
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->pagerIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 367
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClick] , mIsEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_2d

    .line 371
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result p1

    if-nez p1, :cond_2e

    :goto_2d
    return-void

    .line 374
    :cond_2e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->fm:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->pagerIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->createGuidePagerRootFragment(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I
    invoke-static {v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I
    invoke-static {v3}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;II)V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fgetmStateListener(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fgetmDefaultIndex(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->updateIndex(I)V

    .line 379
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->layoutId:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 380
    const-string v0, "guide_pager_root"

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 381
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x4d

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 383
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGuideFragmentStartTime()V

    return-void
.end method
