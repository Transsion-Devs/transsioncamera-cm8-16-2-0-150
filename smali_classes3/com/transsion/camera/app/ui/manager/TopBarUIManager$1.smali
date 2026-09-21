.class Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/4 p1, 0x1

    # setter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$002(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Z)Z

    return-void
.end method
