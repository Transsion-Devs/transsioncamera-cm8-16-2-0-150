.class Lcom/transsion/camera/ui/setting/focus/FocusUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerFocusLockFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 2

    .line 1025
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$2;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1028
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1029
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$2;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmFocusAnimateEnd(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    .line 1030
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$2;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mnotifyFocused(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method
