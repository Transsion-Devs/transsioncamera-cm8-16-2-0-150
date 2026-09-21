.class Lcom/transsion/camera/app/ui/BaseAppUI$7;
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

.field final synthetic val$isSupportMoreMode:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V
    .registers 3

    .line 4902
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->val$isSupportMoreMode:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 4925
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p0, :cond_a

    const/4 p1, 0x1

    .line 4926
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    :cond_a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 4906
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.makeup.MakeUpModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->val$isSupportMoreMode:Z

    if-nez p1, :cond_26

    .line 4908
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4909
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "mode picker visibility: sink with anim, onAnimationEnd set mode picker invisible"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_38

    .line 4911
    :cond_26
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "mode picker visibility: sink with anim, onAnimationEnd set mode picker gone"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4912
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmModePickerLayout(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4914
    :goto_38
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_4a

    .line 4915
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    .line 4916
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "more guide visibility: sink with anim, onAnimationEnd set more guide gone"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4918
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$7;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p0, :cond_54

    const/4 p1, 0x1

    .line 4919
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    :cond_54
    return-void
.end method
