.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->showPop3sSettingTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->-$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
