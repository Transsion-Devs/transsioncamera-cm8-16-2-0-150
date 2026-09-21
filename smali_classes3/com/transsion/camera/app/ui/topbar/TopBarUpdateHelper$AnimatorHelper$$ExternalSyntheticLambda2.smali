.class public final synthetic Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->$r8$lambda$p8t7bB-wrtsw8-LwJ7pHHi_ycH8(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;Ljava/util/function/Consumer;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    return-void
.end method
