.class public final synthetic Lcom/transsion/camera/ui/setting/BaseRunnableController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/BaseRunnableController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;

    check-cast p1, Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->$r8$lambda$uXw9yOMp3tghx2sB_Ft6LaaQK24(Lcom/transsion/camera/ui/setting/BaseRunnableController;Landroid/os/Handler;)V

    return-void
.end method
