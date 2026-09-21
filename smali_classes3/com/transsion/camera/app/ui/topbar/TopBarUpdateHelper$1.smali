.class Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->update(Ljava/util/Map;IZIILandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

.field final synthetic val$temp:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->val$temp:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    new-instance v1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1$1;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 122
    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->accept(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    return-void
.end method
