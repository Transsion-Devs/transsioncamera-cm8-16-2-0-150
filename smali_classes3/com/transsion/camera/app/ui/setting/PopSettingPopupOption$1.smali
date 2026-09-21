.class Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLayout;ILcom/transsion/camera/app/ui/PopSettingPopupOptionManager;ILcom/transsion/camera/app/common/IAppUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutEnd()V
    .registers 10

    .line 170
    invoke-static {}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Layout end, starting popup animation"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmAnimationStrategy(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmContentRoot(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupBackground(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPositionInPopSetting(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I

    move-result v7

    new-instance v8, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1$1;

    invoke-direct {v8, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1$1;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;)V

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIIILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
