.class Lcom/transsion/camera/app/ui/BaseAppUI$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;->sinkUI(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 4945
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 4948
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mode picker visibility: rise mode picker with anim, onAnimationStart, set mode picker visible"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4949
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4950
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_30

    .line 4951
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "more guide visibility: rise with anim, onAnimationEnd set more guide visible"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4952
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    .line 4953
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->abortShowOrHideModePickerRootUI()V

    :cond_30
    return-void
.end method
