.class Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 246
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mupdateSwitchUIStateChanged(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Landroid/view/View;)V

    return-void
.end method
