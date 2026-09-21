.class Lcom/transsion/camera/app/ui/PopSettingUI5$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI5;->createShowPopSettingAnimation(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI5;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI5$3;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5$3;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI5;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI5;->-$$Nest$mupdateTreasureBoxBackground(Lcom/transsion/camera/app/ui/PopSettingUI5;Z)V

    return-void
.end method
