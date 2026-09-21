.class Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

.field final synthetic val$fragmentStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 3

    .line 313
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->val$fragmentStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->val$fragmentStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz v0, :cond_7

    .line 324
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentDestroy()V

    .line 326
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    return-void
.end method

.method public onFragmentExitView()V
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->val$fragmentStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz p0, :cond_7

    .line 332
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentExitView()V

    :cond_7
    return-void
.end method

.method public onFragmentResume()V
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->val$fragmentStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz p0, :cond_7

    .line 317
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentResume()V

    :cond_7
    return-void
.end method
