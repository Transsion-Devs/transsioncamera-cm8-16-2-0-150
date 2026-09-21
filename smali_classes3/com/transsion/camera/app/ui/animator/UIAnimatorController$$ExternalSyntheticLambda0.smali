.class public final synthetic Lcom/transsion/camera/app/ui/animator/UIAnimatorController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/animator/UIAnimatorController;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/animator/UIAnimatorController;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/animator/UIAnimatorController;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/animator/UIAnimatorController;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->$r8$lambda$OpBiKN9t_8kVCXX_4DFg0-FRcXs(Lcom/transsion/camera/app/ui/animator/UIAnimatorController;Ljava/lang/Runnable;)V

    return-void
.end method
