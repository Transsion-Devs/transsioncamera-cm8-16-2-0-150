.class public final synthetic Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->$r8$lambda$SQF8oxWI3nokP18suMzbs3RlcYE(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;Landroid/view/View;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    return-void
.end method
