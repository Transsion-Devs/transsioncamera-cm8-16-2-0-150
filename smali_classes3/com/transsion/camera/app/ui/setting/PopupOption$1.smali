.class Lcom/transsion/camera/app/ui/setting/PopupOption$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutEnd()V
    .registers 10

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmAnimationStrategy(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmContentRoot(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupBackground(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPositionInTopbar(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v7

    new-instance v8, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;

    invoke-direct {v8, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption$1;)V

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIIILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
