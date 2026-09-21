.class public final synthetic Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ZII)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;->f$0:Z

    iput p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;->f$0:Z

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->$r8$lambda$u7YNRd08QDfEYQS5O9ZNehIIXYY(ZIILandroid/view/View;)V

    return-void
.end method
